const mongoose = require('mongoose');

module.exports = async () => {
  if (process.env.NODE_ENV === 'backend-test') {
    await mongoose.connect(process.env.MONGODB_URI, {
      useNewUrlParser: true,
      useUnifiedTopology: true
    });
    await mongoose.connection.db.dropDatabase();
  }
};