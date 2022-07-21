import React, { useEffect, useState } from "react";
import { View, Text, TextInput, Button, Alert } from "react-native";
import { useAuth } from "../providers/AuthProvider";
import styles from "../stylesheet";

export function SignUpView({ navigation }) {
  const [nusp, setNusp] = useState("");
  const [password, setPassword] = useState("");
  const [email, setEmail] = useState("");
  const [telefone, setTelefone] = useState("");
  const [curso, setCurso] = useState("");
  const [status, setStatus] = useState("");
  const { user, signUp } = useAuth();
  const statusCurso = [ "Em progresso", "Finalizado" ];

  useEffect(() => {
    // If there is a user logged in, go to the Projects page.
    if (user != null) {
      navigation.navigate("Projects");
    }
  }, [user]);

  // The onPressSignUp method calls AuthProvider.signUp with the
  // email/password in state and then signs in.
  const onPressSignUp = async () => {
    try {
      await signUp(nusp, password);
      signIn(nusp, password);
    } catch (error) {
      Alert.alert(`Failed to sign up: ${error.message}`);
    }
  };

  return (
    <View>
      <Text>Signup or Signin:</Text>
      <View style={styles.inputContainer}>
        <TextInput
          onChangeText={setNusp}
          value={nusp}
          placeholder="NUSP"
          keyboardType = 'numeric'
          style={styles.inputStyle}
          autoCapitalize="none"
        />
      </View>
      <View style={styles.inputContainer}>
        <TextInput
          onChangeText={(text) => setPassword(text)}
          value={password}
          placeholder="password"
          style={styles.inputStyle}
          secureTextEntry
        />
      </View>
      <View style={styles.inputContainer}>
        <TextInput
          onChangeText={setEmail}
          value={email}
          placeholder="E-mail"
          style={styles.inputStyle}
          autoCapitalize="none"
        />
      </View>
      <View style={styles.inputContainer}>
        <TextInput
          onChangeText={setTelefone}
          value={telefone}
          placeholder="Telefone"
          style={styles.inputStyle}
          autoCapitalize="none"
        />
      </View>
      <View style={styles.inputContainer}>
        <TextInput
          onChangeText={setCurso}
          value={curso}
          placeholder="Curso"
          style={styles.inputStyle}
          autoCapitalize="none"
        />
      </View>
      <View style={styles.inputContainer}>
        <SelectDropdown
            data={statusCurso}
            onSelect={(selectedItem, index) => {
                setStatus(selectedItem)
            }}
            buttonTextAfterSelection={(selectedItem, index) => {
                return selectedItem
            }}
            rowTextForSelection={(item, index) => {
                return item
            }}
        />
      </View>
      <Button onPress={onPressSignUp} title="Sign Up" />
    </View>
  );
}
