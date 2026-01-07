# -*- coding: utf-8 -*-
"""
Created on Tue Jan  6 03:49:35 2026

@author: Bulelani Thai
"""

#password = 'Xhosa87'

import psycopg2 as pg2

conn = pg2.connect(database = 'dvdrental', user = 'postgres', password = 'Xhosa87')

cur = conn.cursor()

cur.execute('SELECT * FROM payment')

cur.fetchmany(10)

data = cur.fetchmany(10)
data[0][4]

conn.close()