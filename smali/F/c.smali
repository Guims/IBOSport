.class public abstract LF/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/res/Configuration;)Landroid/os/LocaleList;
    .locals 0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/res/Configuration;LF/f;)V
    .locals 0

    iget-object p1, p1, LF/f;->a:LF/g;

    iget-object p1, p1, LF/g;->a:Landroid/os/LocaleList;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    return-void
.end method
