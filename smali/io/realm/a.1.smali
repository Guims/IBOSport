.class public final Lio/realm/a;
.super Ljava/lang/Object;

# interfaces
.implements Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;


# instance fields
.field public final synthetic a:Lio/realm/d;


# direct methods
.method public constructor <init>(Lio/realm/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/realm/a;->a:Lio/realm/d;

    return-void
.end method


# virtual methods
.method public final onSchemaChanged()V
    .locals 10

    iget-object v0, p0, Lio/realm/a;->a:Lio/realm/d;

    invoke-virtual {v0}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v2, v1, Lio/realm/k;->g:LK1/c;

    if-eqz v2, :cond_2

    iget-object v3, v2, LK1/c;->q:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    iget-object v5, v2, LK1/c;->s:Ljava/lang/Object;

    check-cast v5, Lio/realm/internal/z;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Class;

    iget-object v7, v2, LK1/c;->t:Ljava/lang/Object;

    check-cast v7, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {v5, v6, v7}, Lio/realm/internal/z;->b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/internal/c;

    iget-object v6, v4, Lio/realm/internal/c;->c:Ljava/util/HashMap;

    iget-object v7, v4, Lio/realm/internal/c;->b:Ljava/util/HashMap;

    iget-object v8, v4, Lio/realm/internal/c;->a:Ljava/util/HashMap;

    iget-boolean v9, v4, Lio/realm/internal/c;->d:Z

    if-eqz v9, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    iget-object v9, v5, Lio/realm/internal/c;->a:Ljava/util/HashMap;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    iget-object v8, v5, Lio/realm/internal/c;->b:Ljava/util/HashMap;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v7, v5, Lio/realm/internal/c;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v4, v5, v4}, Lio/realm/internal/c;->b(Lio/realm/internal/c;Lio/realm/internal/c;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempt to copy null ColumnInfo"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify an immutable ColumnInfo"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v1, Lio/realm/k;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lio/realm/k;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lio/realm/k;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, v1, Lio/realm/k;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    :cond_3
    instance-of v0, v0, Lio/realm/y;

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/realm/internal/objectstore/OsKeyPathMapping;

    iget-object v2, v1, Lio/realm/k;->f:Lio/realm/d;

    iget-object v2, v2, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lio/realm/internal/objectstore/OsKeyPathMapping;-><init>(J)V

    iput-object v0, v1, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    :cond_4
    return-void
.end method
