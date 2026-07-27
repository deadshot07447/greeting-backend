# Greeting Backend

A simple Node.js and Express REST API that reads a greeting message from a MySQL database.

## Features

- Express.js REST API
- MySQL database connection using mysql2
- Environment-based configuration
- Clean separation of routes, controllers, services, and database config
- Async/await error handling

## Project Structure

```text
greeting-backend/
├── src/
│   ├── config/
│   │   └── db.js
│   ├── controllers/
│   │   └── greeting.controller.js
│   ├── services/
│   │   └── greeting.service.js
│   ├── routes/
│   │   └── greeting.routes.js
│   ├── app.js
│   └── server.js
├── .env.example
├── .gitignore
├── database.sql
├── package.json
└── README.md
```

## Requirements

- Node.js 18 LTS
- MySQL 8.0

## Setup MySQL

Run the SQL script in [database.sql](database.sql) to create the database, table, and seed the sample message.

## Install Dependencies

```bash
npm install
```

## Configure Environment

Copy the example environment file and update the values for your MySQL setup:

```bash
copy .env.example .env
```

Then edit .env with your MySQL credentials:

```env
PORT=5000
DB_HOST=localhost
DB_PORT=3306
DB_USER=root
DB_PASSWORD=your_password
DB_NAME=greeting_db
```

## Run the Project

Development mode:

```bash
npm run dev
```

Production mode:

```bash
npm start
```

## API Endpoint

### GET /api/greeting

Each request returns a random greeting from the database.

Example response:

```json
{
  "message": "Hello from Backend Database!"
}
```

## Health Check

```bash
curl http://localhost:5000/health
```

## Note

This is a test change to verify the merge and push workflow.
