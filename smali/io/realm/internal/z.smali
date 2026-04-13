.class public abstract Lio/realm/internal/z;
.super Ljava/lang/Object;


# direct methods
.method public static e(Ljava/lang/Class;)Lio/realm/exceptions/RealmException;
    .locals 3

    new-instance v0, Lio/realm/exceptions/RealmException;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\'"

    const-string v2, "\' is not part of the schema for this Realm."

    invoke-static {v1, p0, v2}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Lio/realm/y;Lio/realm/M;Ljava/util/HashMap;Ljava/util/Set;)Lio/realm/M;
.end method

.method public abstract b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;
.end method

.method public abstract c(Ljava/lang/String;)Ljava/lang/Class;
.end method

.method public abstract d()Ljava/util/HashMap;
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lio/realm/internal/z;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lio/realm/internal/z;

    invoke-virtual {p0}, Lio/realm/internal/z;->f()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lio/realm/internal/z;->f()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract f()Ljava/util/Set;
.end method

.method public final g(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/realm/internal/z;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public abstract h(Ljava/lang/Class;)Ljava/lang/String;
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lio/realm/internal/z;->f()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public abstract i(Lio/realm/y;Ljava/util/Collection;)V
.end method

.method public abstract j(Ljava/lang/Class;)Z
.end method

.method public abstract k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;
.end method

.method public abstract l()Z
.end method
