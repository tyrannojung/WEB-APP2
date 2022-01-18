import * as React from "react";
import Navigation from "./navigations";
import { AppStatusBar } from "./components";
import { StyleSheet, SafeAreaView } from 'react-native';

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: "#ffffff"
  },
});

const App = () => {

  return (
    <>
      <SafeAreaView style={styles.container} >
        <AppStatusBar />
        <Navigation />
      </SafeAreaView>
    </>
  );
};

export default App;
