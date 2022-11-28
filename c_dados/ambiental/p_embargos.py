#cabeçalho
"""Notebook modelo com teste de importação e tratamento de dados sobre embargos ambientais"""

#importando pacotes
import streamlit as st
import pandas as pd
import pydeck as pdk
import datetime as dt

#carregando dados
df=pd.read_csv("termo.csv",sep=";", low_memory=False)

#renomeando e conferindo dataframe
df_data= df

#selecionando as colunas que serão trabalhadas
df_data=df_data[['DAT_EMBARGO','NUM_LATITUDE_TAD','NUM_LONGITUDE_TAD']]

#renomeando as colunas selecionadas
df_data=df_data.rename(columns={'DAT_EMBARGO':'data','NUM_LATITUDE_TAD':'latitude','NUM_LONGITUDE_TAD':'longitude'})

#transformando dados da coluna 'data' em data
df_data['data'] = pd.to_datetime(df_data['data'])

#transformando valores '0' em <NA>
df_data.replace('0', pd.NA, inplace=True)

#dropando dados nulos <NaN> e <NA>
df_data=df_data.dropna()
df_data.isnull().sum()

#trabalhando dashboard
st.title("Embargos Ambientais")
st.markdown(
    """
    O tratamento das condições ambientais deve ser prioridade no Mundo e 
    o Brasil é o centro das atenções dessas medidas, em razão da extensão 
    e diversidade que o acoberta.
    Aqui são apresentados dados referentes aos embargos ambientais, com data 
    e localidade.
    """
)

#trabalhando com sidebar
st.sidebar.info("Foram carregadas {} linhas.".format(df_data.shape[0]))

if st.sidebar.checkbox("Ver tabela com dados"):
    st.header("data")
    st.write(df_data)

df_data.data = pd.to_datetime(df_data.data)
ano_selecionado = st.sidebar.slider("Selecione um ano", 2020, 2021)
df_selecao = df_data[df_data.data.dt.year == ano_selecionado]

#trabalhando mapa

st.subheader("Mapa Embargos Ambientais")

st.pydeck_chart(pdk.Deck(
    map_style='mapbox://styles/mapbox/light-v9',
    initial_view_state=pdk.ViewState(
        latitude=-17.47528,
        longitude=-52.61417,
        zoom=5,
        pitch=50,
    ),
    layers=[
        pdk.Layer(
            'HexagonLayer',
            data=df_selecao[['latitude', 'longitude']],
            get_position='[latitude, longitude]',
            radius=200,
            #auto_highlight=True,
            elevation_scale=4,
            elevation_range=[0, 3000],
            pickable=True,
            extruded=True,
            #coverage=1,
        ),
        pdk.Layer(
            'ScatterplotLayer',
            data=df_selecao,
            get_position='[latitude, longitude]',
            get_color='[200, 30, 0, 160]',
            get_radius=200,
        ),
    ],
))
