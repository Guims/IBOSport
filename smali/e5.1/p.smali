.class public abstract Le5/p;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_7

    instance-of v0, p1, LS4/a;

    if-eqz v0, :cond_6

    instance-of v0, p1, Le5/e;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le5/e;

    invoke-interface {v0}, Le5/e;->getArity()I

    move-result v0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ld5/a;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ld5/l;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ld5/p;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ld5/q;

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    instance-of v0, p1, LA4/b;

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    :goto_0
    if-ne v0, p0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "kotlin.jvm.functions.Function"

    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, " cannot be cast to "

    invoke-static {p1, v0, p0}, Lcom/google/android/material/datepicker/e;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/ClassCastException;

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    const-class p0, Le5/p;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Le5/g;->j(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-void
.end method
