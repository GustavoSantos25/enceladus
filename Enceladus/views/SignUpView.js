import React, { useEffect, useState } from "react";
import { View, Text, TextInput, Button, Alert, SafeAreaView, ScrollView } from "react-native";
import { useAuth } from "../providers/AuthProvider";
import styles from "../stylesheet";

const API_URL = "http://10.0.2.2:8000";

export function SignUpView({ navigation }) {
  const [nusp, setNusp] = useState("");
  const [nome, setNome] = useState("");
  const [password, setPassword] = useState("");
  const [email, setEmail] = useState("");
  const [telefone, setTelefone] = useState("");
  const [curso, setCurso] = useState("");
  const [status, setStatus] = useState("");
  const [unidade_ensino, setUnidade] = useState("");
  const [nivel, setNivel] = useState("");
  const [tipo, setTipo] = useState("");
  const { user, signIn, signUp } = useAuth();

  useEffect(() => {
    // If there is a user logged in, go to the Main page.
    if (user != null) {
      navigation.navigate("Main");
    }
  }, [user]);

  // The onPressSignUp method calls AuthProvider.signUp with the
  // email/password in state and then signs in.
  const onPressSignUp = async () => {
    try {
      const payload = {
        nusp,
        nome,
        email,
        telefone,
        password,
        unidade_ensino,
        curso,
        nivel,
        status,
        tipo
      }

      fetch(`${API_URL}/usuario/create`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body : JSON.stringify(payload)
      }).then(async res => {
        if (res.status === 200) console.log('Request executado com sucesso');
        else console.log(`Request: erro ${res.status}`);
      });

      await signUp(nusp, password);

      signIn(nusp, password);
    } catch (error) {
      Alert.alert(`Failed to sign up: ${error.message}`);
    }
  };

  return (
    <SafeAreaView>
      <ScrollView>
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
            onChangeText={setNome}
            value={nome}
            placeholder="Nome"
            style={styles.inputStyle}
            autoCapitalize="none"
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
          <TextInput
            onChangeText={setStatus}
            value={status}
            placeholder="Status"
            style={styles.inputStyle}
            autoCapitalize="none"
          />
        </View>
        <View style={styles.inputContainer}>
          <TextInput
            onChangeText={setNivel}
            value={nivel}
            placeholder="Nivel"
            style={styles.inputStyle}
            autoCapitalize="none"
          />
        </View>
        <View style={styles.inputContainer}>
          <TextInput
            onChangeText={setTipo}
            value={tipo}
            placeholder="Tipo"
            style={styles.inputStyle}
            autoCapitalize="none"
          />
        </View>
        <View style={styles.inputContainer}>
          <TextInput
            onChangeText={setUnidade}
            value={unidade_ensino}
            placeholder="Nome da Unidade"
            style={styles.inputStyle}
            autoCapitalize="none"
          />
        </View>
        <Button onPress={onPressSignUp} title="Sign Up" />
      </ScrollView>
    </SafeAreaView>
  );
}
