.class public final Landroidx/datastore/preferences/protobuf/Z;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public q:Z

.field public r:Ljava/util/Iterator;

.field public final synthetic s:Landroidx/datastore/preferences/protobuf/X;


# direct methods
.method public constructor <init>(Landroidx/datastore/preferences/protobuf/X;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/datastore/preferences/protobuf/Z;->s:Landroidx/datastore/preferences/protobuf/X;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/datastore/preferences/protobuf/Z;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Z;->r:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Z;->s:Landroidx/datastore/preferences/protobuf/X;

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/X;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/Z;->r:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Z;->r:Ljava/util/Iterator;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Landroidx/datastore/preferences/protobuf/Z;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/datastore/preferences/protobuf/Z;->s:Landroidx/datastore/preferences/protobuf/X;

    iget-object v3, v2, Landroidx/datastore/preferences/protobuf/X;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    iget-object v0, v2, Landroidx/datastore/preferences/protobuf/X;->q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Z;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Z;->q:Z

    iget v1, p0, Landroidx/datastore/preferences/protobuf/Z;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/datastore/preferences/protobuf/Z;->b:I

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Z;->s:Landroidx/datastore/preferences/protobuf/X;

    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/X;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v0, v0, Landroidx/datastore/preferences/protobuf/X;->b:Ljava/util/List;

    iget v1, p0, Landroidx/datastore/preferences/protobuf/Z;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Z;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Z;->q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/datastore/preferences/protobuf/Z;->q:Z

    sget v0, Landroidx/datastore/preferences/protobuf/X;->u:I

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/Z;->s:Landroidx/datastore/preferences/protobuf/X;

    invoke-virtual {v0}, Landroidx/datastore/preferences/protobuf/X;->b()V

    iget v1, p0, Landroidx/datastore/preferences/protobuf/Z;->b:I

    iget-object v2, v0, Landroidx/datastore/preferences/protobuf/X;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Landroidx/datastore/preferences/protobuf/Z;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroidx/datastore/preferences/protobuf/Z;->b:I

    invoke-virtual {v0, v1}, Landroidx/datastore/preferences/protobuf/X;->h(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/datastore/preferences/protobuf/Z;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
