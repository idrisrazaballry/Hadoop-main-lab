# Hadoop-main-lab
# Hadoop Lab — HDFS Practice

This repository provides a ready-to-use Hadoop environment using Docker and GitHub Codespaces.

no need to install Hadoop, Java, Linux, or VirtualBox on their computers.

## 1. Open the Lab

1. Open the GitHub repository.
2. Click **Code**.
3. Select **Codespaces**.
4. Click **New codespace**.
5. Select the `main` branch.
6. Click **Create codespace**.
7. Wait for the VS Code environment to open.

## 2. Start Hadoop

Open the Terminal in Codespaces and run:

```bash
docker compose up -d
```

Check the Hadoop containers:

```bash
docker compose ps
```

You should see:

```text
namenode   Up
datanode   Up
```

## 3. Enter the Hadoop NameNode

Run:

```bash
docker exec -it namenode bash
```

You are now inside the Hadoop NameNode container.

## 4. Check HDFS

Run:

```bash
hdfs dfs -ls /
```

## 5. Create an HDFS Directory

```bash
hdfs dfs -mkdir /student_data
```

Check:

```bash
hdfs dfs -ls /
```

You should see:

```text
/student_data
```

## 6. Stop Hadoop

When finished with the lab:

```bash
exit
```

Then:

```bash
docker compose down
```

## Important

The GitHub repository contains the Hadoop configuration.

Do **not** delete the repository files.

should create **own Codespace** from this repository.

One should not use another Codespace.
