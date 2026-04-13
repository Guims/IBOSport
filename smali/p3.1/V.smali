.class public final Lp3/V;
.super Lp3/o;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final transient s:Ljava/util/Map;

.field public transient t:I

.field public transient u:Lp3/U;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lp3/V;->s:Ljava/util/Map;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lp3/o;->r:Ljava/util/Map;

    if-nez v0, :cond_2

    iget-object v0, p0, Lp3/V;->s:Ljava/util/Map;

    instance-of v1, v0, Ljava/util/NavigableMap;

    if-eqz v1, :cond_0

    new-instance v1, Lp3/f;

    check-cast v0, Ljava/util/NavigableMap;

    invoke-direct {v1, p0, v0}, Lp3/f;-><init>(Lp3/V;Ljava/util/NavigableMap;)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/util/SortedMap;

    if-eqz v1, :cond_1

    new-instance v1, Lp3/i;

    check-cast v0, Ljava/util/SortedMap;

    invoke-direct {v1, p0, v0}, Lp3/i;-><init>(Lp3/V;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lp3/d;

    invoke-direct {v1, p0, v0}, Lp3/d;-><init>(Lp3/V;Ljava/util/Map;)V

    :goto_0
    iput-object v1, p0, Lp3/o;->r:Ljava/util/Map;

    return-object v1

    :cond_2
    return-object v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lp3/V;->s:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lp3/V;->t:I

    return-void
.end method

.method public final c()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lp3/V;->u:Lp3/U;

    invoke-virtual {v0}, Lp3/U;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method
