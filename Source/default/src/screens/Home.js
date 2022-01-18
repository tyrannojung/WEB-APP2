import React from "react";
import styled from "styled-components/native";
import { WebView } from "react-native-webview";

const Container = styled.SafeAreaView`
  flex: 1;
  background-color: #ffffff;
`;

const ContainerMain = styled.View`
  flex: 1;
  background-color: #ffffff;
  border-top-width: 0.2px;
  border-top-color: #a4a4a4;
`;

const Home = () => {
  return (
    <Container>
      <ContainerMain>
        <WebView source={{ uri: "https://bts-education.nodehome.io/" }} />
      </ContainerMain>
    </Container>
  );
};

export default Home;
