exports = async function createNewUserDocument({user}) {
  const cluster = context.services.get("mongodb-atlas");
  const users = cluster.db("enceladus").collection("usuarios");
  return users.insertOne({
    _id: user.id,
    _partition: `user=${user.id}`,
    nusp: user.data.nusp,
    canReadPartitions: [`user=${user.id}`],
    canWritePartitions: [`project=${user.id}`],
    memberOf: [
      {"name": "My Project", "partition": `project=${user.id}`}
    ],
  });
};
