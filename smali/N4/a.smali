.class public final LN4/a;
.super Lio/realm/internal/z;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/realm/internal/z;Ljava/util/HashSet;)V
    .locals 3

    const/4 v0, 0x1

    iput v0, p0, LN4/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN4/a;->b:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lio/realm/internal/z;->f()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, LN4/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Lio/realm/internal/z;)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, LN4/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LN4/a;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lio/realm/internal/z;->f()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v3, v5}, Lio/realm/internal/z;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, LN4/a;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Class;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v7, v5, v0, v3, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "It is not allowed for two different model classes to share the same internal name in Realm. The classes %s and %s are being included from the modules \'%s\' and \'%s\' and they share the same internal name \'%s\'."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_2
    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, LN4/a;->c:Ljava/lang/Object;

    check-cast v7, Ljava/util/HashMap;

    invoke-virtual {v7, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, LN4/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lio/realm/y;Lio/realm/M;Ljava/util/HashMap;Ljava/util/Set;)Lio/realm/M;
    .locals 1

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LN4/a;->m(Ljava/lang/Class;)V

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/z;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/realm/internal/z;->a(Lio/realm/y;Lio/realm/M;Ljava/util/HashMap;Ljava/util/Set;)Lio/realm/M;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LN4/a;->n(Ljava/lang/Class;)Lio/realm/internal/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/realm/internal/z;->a(Lio/realm/y;Lio/realm/M;Ljava/util/HashMap;Ljava/util/Set;)Lio/realm/M;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;
    .locals 1

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, LN4/a;->m(Ljava/lang/Class;)V

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/z;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/z;->b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1}, LN4/a;->n(Ljava/lang/Class;)Lio/realm/internal/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/z;->b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/z;

    invoke-virtual {v0, p1}, Lio/realm/internal/z;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LN4/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {p0, v0}, LN4/a;->n(Ljava/lang/Class;)Lio/realm/internal/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/z;->c(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Ljava/util/HashMap;
    .locals 5

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v1, Lio/realm/internal/z;

    invoke-virtual {v1}, Lio/realm/internal/z;->d()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    iget-object v3, p0, LN4/a;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/OsObjectSchemaInfo;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/z;

    invoke-virtual {v2}, Lio/realm/internal/z;->d()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN4/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    return-object v0

    :pswitch_0
    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, LN4/a;->m(Ljava/lang/Class;)V

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/z;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/internal/z;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1}, LN4/a;->n(Ljava/lang/Class;)Lio/realm/internal/z;

    move-result-object v0

    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/realm/internal/z;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Lio/realm/y;Ljava/util/Collection;)V
    .locals 1

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LN4/a;->m(Ljava/lang/Class;)V

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/z;

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/z;->i(Lio/realm/y;Ljava/util/Collection;)V

    return-void

    :pswitch_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/M;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LN4/a;->n(Ljava/lang/Class;)Lio/realm/internal/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/realm/internal/z;->i(Lio/realm/y;Ljava/util/Collection;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j(Ljava/lang/Class;)Z
    .locals 1

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LN4/a;->m(Ljava/lang/Class;)V

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/z;

    invoke-virtual {v0, p1}, Lio/realm/internal/z;->j(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, LN4/a;->n(Ljava/lang/Class;)Lio/realm/internal/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/realm/internal/z;->j(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;
    .locals 1

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1}, LN4/a;->m(Ljava/lang/Class;)V

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/z;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/realm/internal/z;->k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;

    move-result-object p1

    return-object p1

    :pswitch_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {p0, p1}, LN4/a;->n(Ljava/lang/Class;)Lio/realm/internal/z;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/realm/internal/z;->k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, LN4/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/z;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lio/realm/internal/z;->l()Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/z;

    invoke-virtual {v1}, Lio/realm/internal/z;->l()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public m(Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, LN4/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " is not part of the schema for this Realm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(Ljava/lang/Class;)Lio/realm/internal/z;
    .locals 2

    iget-object v0, p0, LN4/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/internal/z;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lio/realm/exceptions/RealmException;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, " is not part of the schema for this Realm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
