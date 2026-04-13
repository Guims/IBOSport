.class public abstract Lp3/J;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:Lp3/a0;

.field public transient q:Lp3/b0;

.field public transient r:Lp3/c0;


# direct methods
.method public static a(Ljava/util/Map;)Lp3/J;
    .locals 4

    instance-of v0, p0, Lp3/J;

    if-eqz v0, :cond_0

    instance-of v0, p0, Ljava/util/SortedMap;

    if-nez v0, :cond_0

    check-cast p0, Lp3/J;

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    new-instance v1, LA/d;

    invoke-direct {v1, v0}, LA/d;-><init>(I)V

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iget-object v2, v1, LA/d;->r:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    if-le v0, v3, :cond_2

    array-length v3, v2

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/w;->e(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v1, LA/d;->r:Ljava/lang/Object;

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, LA/d;->p(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, LA/d;->c()Lp3/d0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Lp3/L;
    .locals 4

    iget-object v0, p0, Lp3/J;->b:Lp3/a0;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lp3/d0;

    new-instance v1, Lp3/a0;

    iget-object v2, v0, Lp3/d0;->t:[Ljava/lang/Object;

    iget v3, v0, Lp3/d0;->u:I

    invoke-direct {v1, v0, v2, v3}, Lp3/a0;-><init>(Lp3/J;[Ljava/lang/Object;I)V

    iput-object v1, p0, Lp3/J;->b:Lp3/a0;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final c()Lp3/C;
    .locals 4

    iget-object v0, p0, Lp3/J;->r:Lp3/c0;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lp3/d0;

    new-instance v1, Lp3/c0;

    const/4 v2, 0x1

    iget v3, v0, Lp3/d0;->u:I

    iget-object v0, v0, Lp3/d0;->t:[Ljava/lang/Object;

    invoke-direct {v1, v0, v2, v3}, Lp3/c0;-><init>([Ljava/lang/Object;II)V

    iput-object v1, p0, Lp3/J;->r:Lp3/c0;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lp3/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lp3/J;->c()Lp3/C;

    move-result-object v0

    invoke-virtual {v0, p1}, Lp3/C;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lp3/J;->b()Lp3/L;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lp3/q;->f(Ljava/util/Map;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lp3/J;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lp3/J;->b()Lp3/L;

    move-result-object v0

    invoke-static {v0}, Lp3/q;->k(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    move-object v0, p0

    check-cast v0, Lp3/d0;

    invoke-virtual {v0}, Lp3/d0;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 5

    iget-object v0, p0, Lp3/J;->q:Lp3/b0;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lp3/d0;

    new-instance v1, Lp3/c0;

    const/4 v2, 0x0

    iget v3, v0, Lp3/d0;->u:I

    iget-object v4, v0, Lp3/d0;->t:[Ljava/lang/Object;

    invoke-direct {v1, v4, v2, v3}, Lp3/c0;-><init>([Ljava/lang/Object;II)V

    new-instance v2, Lp3/b0;

    invoke-direct {v2, v0, v1}, Lp3/b0;-><init>(Lp3/J;Lp3/c0;)V

    iput-object v2, p0, Lp3/J;->q:Lp3/b0;

    return-object v2

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lp3/q;->u(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lp3/J;->c()Lp3/C;

    move-result-object v0

    return-object v0
.end method
