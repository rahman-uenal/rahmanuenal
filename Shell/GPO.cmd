:: Display All Applied GPOs applied to  (User and Computer)
gpresult /r

::Display GPOs applied to a specific user
:: If you don’t want to see both User and Computer GPOs then you can use the scope option to specify user or computer

gpresult /r /scope:user
:: Display GPOs applied to a specific computer
gpresult /r /scope:computer
:: Display GPOs applied on a remote computer
gpresult /s pc2 /r

gpresult /r
