# SQL Project
![]([https://giphy.com/gifs/Giflytics-jazminantoinette-roll-safe-giflytics-GbH8vRmrNHdVZhouBt.gif](https://media3.giphy.com/media/GbH8vRmrNHdVZhouBt/giphy.gif?cid=ecf05e47xx4gwpfo6qjkn59elsczsade7eij9mtitt2tvmvi&rid=giphy.gif&ct=g)")



### :nut_and_bolt: **Deployment**
#### :key: Prerequisites
1. To have installed `conda`
2. To have installed `git`

---
#### :one: Installation instructions
The installation process is the next:
  1. Clone this repository
  2. Execute in the terminal
   
   `conda env create -n sql` 

   `pip install -r requirements.txt`


---
#### :file_folder: **Folder structure**
```
└── SQL_project
    ├── .gitignore
    ├── requirements.txt
    ├── README.md
    ├── data
        ├── actor.csv
        ├── category.csv
        ├── film.csv
        ├── inventory.csv
        ├── language.csv
        ├── old_HDD.csv
        ├── rental.csv
    ├── 
    │   
    └── src
        ├── data_cleaning.ipynb
        ├── sql_queries.ipynb

```


------

### :boom: **Steps developed**

#### **1. Data cleaning**
- Check null values (none)
- Check duplicate values(none)
- Erase column `last_update` from every table
- Erase column  `original_language_id`
- change data types (datetime)
- Save as CSV in folder /data (overwritten)

   

----
### :pushpin: **Some insights**



####


### :shit: **ToDo**

