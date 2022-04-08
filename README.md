# CNAB API

### Setup:

- Ruby 3.0.0

in desafio-dev/cnab_api please run:

```
bundle install

rails s -p 3001

```

### Requests:

### List all Cnabs

- GET : base_url/cnabs, status 201

```
[
	{
		"id": 1,
		"cnab_type": "financiamento",
		"date": "1970-08-22T16:25:01.000Z",
		"cnab_value": "142.0",
		"cpf": "09620676017",
		"card": "4753****3153",
		"hour": "1970-01-02T18:37:33.000Z",
		"store_owner": "JOÃO MACEDO   ",
		"store_name": "BAR DO JOÃO       \n",
		"created_at": "2022-04-05T15:44:06.698Z",
		"updated_at": "2022-04-05T15:44:06.698Z"
	},...
]
```

### Create new Cnabs

- Post : base_url/cnabs , status 201
  headers: Content-Type : multipart/form-data

```
{"message":"Cnab salvo com sucesso"}
```
