# pg-scott

This is the classical [Scott database](http://www.orafaq.com/wiki/SCOTT) (EMP, DEPT, SALGRADE, BONUS) schema converted for PostgreSQL.

Data
----
Four relations are available: `emp`, `dept`, `salgrade` and `bonus`.

The data is based on the data in [The EMP and DEPT tables in Oracle](https://apexplained.wordpress.com/2013/04/20/the-emp-and-dept-tables-in-oracle/) by [Nick Buytaert](https://github.com/nbuytaert1)
**with some differences**.

Conversion
----------
Data types are converted to the simplest PostgreSQL data types (`integer`, `text` and `date`).

Issues
------
For any bug reports or feature requests please
[post an issue on GitHub](https://github.com/dirkcaumueller/pg-scott/issues).

Author
------
Dirk C. Aumueller - [https://github.com/dirkcaumueller](https://github.com/dirkcaumueller)

License
-------
MIT License (Expat). See [LICENSE.md](LICENSE.md) for details.
