.class public final Lio/realm/o;
.super Lio/realm/B;


# virtual methods
.method public final a()Lio/realm/internal/core/NativeRealmAny;
    .locals 1

    new-instance v0, Lio/realm/internal/core/NativeRealmAny;

    invoke-direct {v0}, Lio/realm/internal/core/NativeRealmAny;-><init>()V

    return-object v0
.end method

.method public final b(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-class v0, Lio/realm/o;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "null"

    return-object v0
.end method
