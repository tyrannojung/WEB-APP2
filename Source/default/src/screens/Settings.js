import React from "react";
import styled from "styled-components/native";
import ABCLogo from "../../assets/images/icon.png";

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

const ItemBorder = styled.View`
  flex-direction: column;
  height: 8px;
  border-top-width: 0.2px;
  border-top-color: #a4a4a4;
  background-color: #eeeeee;
`;

//리스트
const TextContainer = styled.View`
  flex-direction: row;
  align-items: center;
  justify-content: space-between;
  padding: 20px 25px;
`;

const ItemTitle = styled.Text`
  font-size: 18px;
  color: #000000;
`;

const ItemDescription = styled.Text`
  font-size: 16px;
  color: grey;
`;

const LogoContainer = styled.View`
  align-items: center;
  padding: 10px;
`;

const Logo = styled.Image`
  width: 100px;
  height: 100px;
`;

const Settings = () => {
  const contentTitle = ["버전 정보", "저작권"];
  const contentDec = ["1.0.0", "ABCLab Inc."];
  return (
    <Container>
      <ContainerMain>
        <LogoContainer>
          <Logo source={ABCLogo} />
        </LogoContainer>
        <ItemBorder />
        {contentTitle.map((title, index) => {
          return (
            <TextContainer key={index}>
              <ItemTitle>{title}</ItemTitle>
              <ItemDescription>{contentDec[index]}</ItemDescription>
            </TextContainer>
          );
        })}
        <ItemBorder />
      </ContainerMain>
    </Container>
  );
};

export default Settings;
