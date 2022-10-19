# Setting Up Nginx as a Reverse Proxy Server

- To setup the proxy server we have to first modify the `location` in the `default` file. The link to the file is as below:

```
sudo nano /etc/nginx/sites-available/default
```

- In the file, we add the location as follows: make sure the `localhost` is set to `3000`.

```
location / {
        proxy_pass http://localhost:3000;
        proxy_http_version 1.1;
        proxy_set_header Upgrade $http_upgrade;
        proxy_set_header Connection 'upgrade';
        proxy_set_header Host $host;
        proxy_cache_bypass $http_upgrade;
    }
```

- Next, we check if we have any syntax error in the default file

```
sudo nginx -t
```

- Restart nginx, to incorporate any changes made

```
sudo systemctl restart nginx
```

- Navigate to the `app` folder

- run `npm install`

- run `npm start`

- check the file is running correctly on `port: 3000`

<p align="center">
  <img src="https://user-images.githubusercontent.com/110366380/196738427-ac0525f4-6fe9-4ee3-aba1-bb1b32ef1eda.png">
</p>

- Now check the file again without the port `http://192.168.10.100/`

<p align="center">
  <img src="https://user-images.githubusercontent.com/110366380/196740738-1f9e9da3-b70a-4ac8-88ec-dc6f1041688a.png">
</p>

**Note**: The Image is not showing
