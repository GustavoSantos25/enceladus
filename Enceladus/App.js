import React from "react";
import "react-native-gesture-handler";
import { NavigationContainer } from "@react-navigation/native";
import { createStackNavigator } from "@react-navigation/stack";

import { AuthProvider } from "./providers/AuthProvider";

import { WelcomeView } from "./views/WelcomeView";
import { SignUpView } from "./views/SignUpView";
import { MainView } from "./views/MainView";

import { Logout } from "./components/Logout";

const Stack = createStackNavigator();

const App = () => {
  return (
    <AuthProvider>
      <NavigationContainer>
        <Stack.Navigator>
          <Stack.Screen
            name="Welcome View"
            component={WelcomeView}
            options={{ title: "Enceladus" }}
          />
          <Stack.Screen
            name="SignUp"
            component={SignUpView}
            options={{ title: "Sign Up" }}
          />
          <Stack.Screen
            name="Main"
            component={MainView}
            title="MainView"
            headerBackTitle="log out"
            options={{
              headerLeft: function Header() {
                return <Logout />;
              },
            }}
          />
        </Stack.Navigator>
      </NavigationContainer>
    </AuthProvider>
  );
};

export default App;
