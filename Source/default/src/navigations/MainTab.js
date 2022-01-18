import React from "react";
import { createBottomTabNavigator } from "@react-navigation/bottom-tabs";
import { Ionicons } from "@expo/vector-icons";
import { theme } from "../../theme/theme";
import { Home, Settings } from "../screens";

const TabIcon = ({ name, size, color }) => {
  return <Ionicons name={name} size={size} color={color} />;
};

const Tab = createBottomTabNavigator();

const MainTab = () => {
  return (
    <Tab.Navigator
      initialRouteName="Home"
      screenOptions={{
        headerShown: false,
        tabBarShowLabel: false,
        tabBarStyle: {
          backgroundColor: theme.backgroundColor,
          borderTopColor: theme.borderColor,
          borderTopWidth: 0.3,
          tabBarActiveTintColor: theme.tabActiveColor,
          tabBarInactiveTintColor: theme.borderColor,
        },
      }}
    >
      <Tab.Screen
        name="Home"
        component={Home}
        options={{
          tabBarIcon: (props) =>
            TabIcon({
              ...props,
              name: props.focused ? "home" : "home-outline",
            }),
        }}
      />
      <Tab.Screen
        name="Settings"
        component={Settings}
        options={{
          tabBarIcon: (props) =>
            TabIcon({
              ...props,
              name: props.focused ? "settings" : "settings-outline",
            }),
        }}
      />
    </Tab.Navigator>
  );
};

export default MainTab;
