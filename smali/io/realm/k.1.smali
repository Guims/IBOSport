.class public final Lio/realm/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/HashMap;

.field public e:Lio/realm/internal/objectstore/OsKeyPathMapping;

.field public final f:Lio/realm/d;

.field public final g:LK1/c;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Lio/realm/d;LK1/c;I)V
    .locals 0

    iput p3, p0, Lio/realm/k;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lio/realm/k;->a:Ljava/util/HashMap;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lio/realm/k;->b:Ljava/util/HashMap;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lio/realm/k;->c:Ljava/util/HashMap;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iput-object p3, p0, Lio/realm/k;->d:Ljava/util/HashMap;

    const/4 p3, 0x0

    iput-object p3, p0, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    iput-object p1, p0, Lio/realm/k;->f:Lio/realm/d;

    iput-object p2, p0, Lio/realm/k;->g:LK1/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lio/realm/internal/c;
    .locals 3

    iget-object v0, p0, Lio/realm/k;->g:LK1/c;

    if-eqz v0, :cond_1

    iget-object v1, v0, LK1/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/internal/c;

    if-nez v2, :cond_0

    iget-object v2, v0, LK1/c;->s:Ljava/lang/Object;

    check-cast v2, Lio/realm/internal/z;

    iget-object v0, v0, LK1/c;->t:Ljava/lang/Object;

    check-cast v0, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {v2, p1, v0}, Lio/realm/internal/z;->b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Attempt to use column key before set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Ljava/lang/Class;)Lio/realm/internal/Table;
    .locals 5

    iget-object v0, p0, Lio/realm/k;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/Table;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/internal/Table;

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lio/realm/k;->f:Lio/realm/d;

    iget-object v3, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v3, v3, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/realm/internal/z;->h(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lio/realm/internal/Table;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, v3}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v1
.end method
