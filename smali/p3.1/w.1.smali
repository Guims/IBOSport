.class public final Lp3/w;
.super Lp3/y;


# direct methods
.method public static f(I)Lp3/y;
    .locals 0

    if-gez p0, :cond_0

    sget-object p0, Lp3/y;->b:Lp3/x;

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    sget-object p0, Lp3/y;->c:Lp3/x;

    return-object p0

    :cond_1
    sget-object p0, Lp3/y;->a:Lp3/w;

    return-object p0
.end method


# virtual methods
.method public final a(II)Lp3/y;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    invoke-static {p1}, Lp3/w;->f(I)Lp3/y;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lp3/y;
    .locals 0

    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lp3/w;->f(I)Lp3/y;

    move-result-object p1

    return-object p1
.end method

.method public final c(ZZ)Lp3/y;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lp3/w;->f(I)Lp3/y;

    move-result-object p1

    return-object p1
.end method

.method public final d(ZZ)Lp3/y;
    .locals 0

    invoke-static {p2, p1}, Ljava/lang/Boolean;->compare(ZZ)I

    move-result p1

    invoke-static {p1}, Lp3/w;->f(I)Lp3/y;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
