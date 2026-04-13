.class public Ln/e;
.super Ln/j;

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public w:Landroidx/datastore/preferences/protobuf/a0;

.field public x:Ln/b;

.field public y:Ln/d;


# direct methods
.method public constructor <init>(Ln/e;)V
    .locals 0

    invoke-direct {p0}, Ln/j;-><init>()V

    invoke-virtual {p0, p1}, Ln/j;->i(Ln/e;)V

    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Ln/e;->w:Landroidx/datastore/preferences/protobuf/a0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/datastore/preferences/protobuf/a0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/datastore/preferences/protobuf/a0;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Ln/e;->w:Landroidx/datastore/preferences/protobuf/a0;

    :cond_0
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ln/e;->x:Ln/b;

    if-nez v0, :cond_0

    new-instance v0, Ln/b;

    invoke-direct {v0, p0}, Ln/b;-><init>(Ln/e;)V

    iput-object v0, p0, Ln/e;->x:Ln/b;

    :cond_0
    return-object v0
.end method

.method public final m(I[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ln/j;->r:I

    array-length v1, p2

    if-ge v1, v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ln/j;->q:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v3, p1

    aget-object v2, v2, v3

    aput-object v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p2

    if-le p1, v0, :cond_2

    const/4 p1, 0x0

    aput-object p1, p2, v0

    :cond_2
    return-object p2
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Ln/j;->r:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ln/j;->b(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Ln/e;->y:Ln/d;

    if-nez v0, :cond_0

    new-instance v0, Ln/d;

    invoke-direct {v0, p0}, Ln/d;-><init>(Ln/e;)V

    iput-object v0, p0, Ln/e;->y:Ln/d;

    :cond_0
    return-object v0
.end method
