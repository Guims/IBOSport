.class public abstract Lio/realm/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static volatile v:Landroid/content/Context;

.field public static final w:LM4/c;

.field public static final x:LM4/c;

.field public static final y:LB5/c;


# instance fields
.field public final b:Z

.field public final q:J

.field public final r:Lio/realm/J;

.field public s:Lio/realm/G;

.field public t:Lio/realm/internal/OsSharedRealm;

.field public final u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LM4/c;

    sget v1, LM4/c;->q:I

    invoke-direct {v0, v1, v1}, LM4/c;-><init>(II)V

    sput-object v0, Lio/realm/d;->w:LM4/c;

    new-instance v0, LM4/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, LM4/c;-><init>(II)V

    sput-object v0, Lio/realm/d;->x:LM4/c;

    new-instance v0, LB5/c;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LB5/c;-><init>(I)V

    sput-object v0, Lio/realm/d;->y:LB5/c;

    return-void
.end method

.method public constructor <init>(Lio/realm/G;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/t;)V
    .locals 5

    iget-object v0, p1, Lio/realm/G;->c:Lio/realm/J;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lio/realm/a;

    invoke-direct {v1, p0}, Lio/realm/a;-><init>(Lio/realm/d;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lio/realm/d;->q:J

    iput-object v0, p0, Lio/realm/d;->r:Lio/realm/J;

    const/4 v2, 0x0

    iput-object v2, p0, Lio/realm/d;->s:Lio/realm/G;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lio/realm/internal/r;

    invoke-direct {v2, v0}, Lio/realm/internal/r;-><init>(Lio/realm/J;)V

    new-instance v0, Ljava/io/File;

    sget-object v3, Lio/realm/d;->v:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, ".realm.temp"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lio/realm/internal/r;->d:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, v2, Lio/realm/internal/r;->c:Z

    iput-object p2, v2, Lio/realm/internal/r;->b:Lio/realm/internal/OsSchemaInfo;

    invoke-static {v2, p3}, Lio/realm/internal/OsSharedRealm;->getInstance(Lio/realm/internal/r;Lio/realm/internal/t;)Lio/realm/internal/OsSharedRealm;

    move-result-object p2

    iput-object p2, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p2}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    move-result p2

    iput-boolean p2, p0, Lio/realm/d;->b:Z

    iput-boolean v0, p0, Lio/realm/d;->u:Z

    iget-object p2, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p2, v1}, Lio/realm/internal/OsSharedRealm;->registerSchemaChangedCallback(Lio/realm/internal/OsSharedRealm$SchemaChangedCallback;)V

    iput-object p1, p0, Lio/realm/d;->s:Lio/realm/G;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/realm/a;

    invoke-direct {v0, p0}, Lio/realm/a;-><init>(Lio/realm/d;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/d;->q:J

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getConfiguration()Lio/realm/J;

    move-result-object v0

    iput-object v0, p0, Lio/realm/d;->r:Lio/realm/J;

    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/d;->s:Lio/realm/G;

    iput-object p1, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->isFrozen()Z

    move-result p1

    iput-boolean p1, p0, Lio/realm/d;->b:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/realm/d;->u:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    check-cast v0, LB0/i;

    iget-object v0, v0, LB0/i;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/Looper;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-boolean v0, v0, Lio/realm/J;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lio/realm/exceptions/RealmException;

    const-string v1, "Queries on the UI thread have been disabled. They can be enabled by setting \'RealmConfiguration.Builder.allowQueriesOnUiThread(true)\'."

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lio/realm/d;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/d;->q:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 6

    iget-boolean v0, p0, Lio/realm/d;->b:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lio/realm/d;->q:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm instance can only be closed on the thread it was created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/realm/d;->s:Lio/realm/G;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v2, Lio/realm/J;->c:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lio/realm/d;->y()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v4}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/t;

    move-result-object v4

    goto :goto_1

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :cond_2
    sget-object v4, Lio/realm/internal/t;->r:Lio/realm/internal/t;

    :goto_1
    invoke-virtual {v0, v3, v4}, Lio/realm/G;->c(Ljava/lang/Class;Lio/realm/internal/t;)Lio/realm/E;

    move-result-object v3

    invoke-virtual {v3}, Lio/realm/E;->c()I

    move-result v4

    if-gtz v4, :cond_3

    const-string v1, "%s has been closed already. refCount is %s"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_3
    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_9

    :try_start_1
    invoke-virtual {v3}, Lio/realm/E;->a()V

    iput-object v1, p0, Lio/realm/d;->s:Lio/realm/G;

    iget-object v2, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    if-eqz v2, :cond_4

    iget-boolean v3, p0, Lio/realm/d;->u:Z

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Lio/realm/internal/OsSharedRealm;->close()V

    iput-object v1, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    :cond_4
    iget-object v2, v0, Lio/realm/G;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/E;

    instance-of v5, v4, Lio/realm/F;

    if-eqz v5, :cond_5

    iget-object v4, v4, Lio/realm/E;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    add-int/2addr v4, v3

    move v3, v4

    goto :goto_2

    :cond_6
    if-nez v3, :cond_a

    iput-object v1, v0, Lio/realm/G;->c:Lio/realm/J;

    iget-object v1, v0, Lio/realm/G;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/E;

    instance-of v3, v2, Lio/realm/C;

    if-eqz v3, :cond_7

    check-cast v2, Lio/realm/C;

    iget-object v2, v2, Lio/realm/C;->c:Lio/realm/d;

    if-eqz v2, :cond_7

    :goto_3
    invoke-virtual {v2}, Lio/realm/d;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lio/realm/d;->close()V

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lio/realm/d;->r:Lio/realm/J;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    goto :goto_4

    :cond_9
    iget-object v1, v3, Lio/realm/E;->a:Ljava/lang/ThreadLocal;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_a
    :goto_4
    monitor-exit v0

    return-void

    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_b
    iput-object v1, p0, Lio/realm/d;->s:Lio/realm/G;

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_c

    iget-boolean v2, p0, Lio/realm/d;->u:Z

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->close()V

    iput-object v1, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    :cond_c
    return-void
.end method

.method public final f()V
    .locals 15

    invoke-virtual {p0}, Lio/realm/d;->b()V

    invoke-virtual {p0}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v0

    iget v1, v0, Lio/realm/k;->h:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lio/realm/k;->f:Lio/realm/d;

    iget-object v1, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getTablesNames()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_b

    aget-object v6, v1, v5

    invoke-static {v6}, Lio/realm/internal/Table;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v6}, Lio/realm/internal/Table;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v7, v6}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    iget-object v7, v0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v7, v6}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v6

    new-instance v7, Lio/realm/n;

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8, v4}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {v7, v0, v6}, Lio/realm/Q;-><init>(Lio/realm/d;Lio/realm/internal/Table;)V

    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_1

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null or empty class names are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, v0, Lio/realm/k;->f:Lio/realm/d;

    iget-object v2, v1, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v2, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {v2}, Lio/realm/internal/z;->f()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v2, v5}, Lio/realm/internal/z;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v5}, Lio/realm/internal/Table;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v7, v6}, Lio/realm/internal/OsSharedRealm;->hasTable(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    iget-object v7, v1, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v7, v6}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v6

    new-instance v7, Lio/realm/j;

    iget-object v8, v0, Lio/realm/k;->g:LK1/c;

    if-eqz v8, :cond_8

    iget-object v9, v8, LK1/c;->s:Ljava/lang/Object;

    check-cast v9, Lio/realm/internal/z;

    iget-object v10, v8, LK1/c;->r:Ljava/lang/Object;

    check-cast v10, Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/realm/internal/c;

    if-nez v11, :cond_6

    invoke-virtual {v9}, Lio/realm/internal/z;->f()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    invoke-virtual {v9, v13}, Lio/realm/internal/z;->g(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v9, v8, LK1/c;->q:Ljava/lang/Object;

    check-cast v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v9, v13}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/realm/internal/c;

    if-nez v11, :cond_5

    iget-object v11, v8, LK1/c;->s:Ljava/lang/Object;

    check-cast v11, Lio/realm/internal/z;

    iget-object v8, v8, LK1/c;->t:Ljava/lang/Object;

    check-cast v8, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {v11, v13, v8}, Lio/realm/internal/z;->b(Ljava/lang/Class;Lio/realm/internal/OsSchemaInfo;)Lio/realm/internal/c;

    move-result-object v8

    invoke-virtual {v9, v13, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v8

    :cond_5
    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    if-eqz v11, :cond_7

    invoke-direct {v7, v1, v6}, Lio/realm/Q;-><init>(Lio/realm/d;Lio/realm/internal/Table;)V

    move-object v5, v7

    :goto_3
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    new-instance v0, Lio/realm/exceptions/RealmException;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "\'"

    const-string v2, "\' doesn\'t exist in current schema."

    invoke-static {v1, v5, v2}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to use column key before set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null or empty class names are not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    move-object v3, v4

    :cond_b
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/Q;

    invoke-virtual {p0}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v2

    iget-object v1, v1, Lio/realm/Q;->b:Lio/realm/internal/Table;

    invoke-virtual {v1}, Lio/realm/internal/Table;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lio/realm/internal/Table;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lio/realm/k;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/realm/internal/Table;

    if-eqz v4, :cond_c

    goto :goto_5

    :cond_c
    iget-object v2, v2, Lio/realm/k;->f:Lio/realm/d;

    iget-object v2, v2, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v2, v1}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    invoke-virtual {v4}, Lio/realm/internal/Table;->b()V

    goto :goto_4

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final finalize()V
    .locals 3

    iget-boolean v0, p0, Lio/realm/d;->u:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->c:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Remember to call close() on all Realm instances. Realm %s is being finalized without being closed, this can lead to running out of native memory."

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lio/realm/d;->s:Lio/realm/G;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lio/realm/G;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lio/realm/G;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public abstract h()Lio/realm/d;
.end method

.method public final isClosed()Z
    .locals 4

    iget-boolean v0, p0, Lio/realm/d;->b:Z

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lio/realm/d;->q:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm access from incorrect thread. Realm objects can only be accessed on the thread they were created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method public final r(Ljava/lang/Class;Lio/realm/internal/UncheckedRow;)Lio/realm/M;
    .locals 3

    iget-object v0, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {p0}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1, p1}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, p1, p0, p2, v1}, Lio/realm/internal/z;->k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Class;Ljava/lang/String;J)Lio/realm/M;
    .locals 4

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lio/realm/internal/Table;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v2, v1, Lio/realm/k;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/internal/Table;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lio/realm/k;->f:Lio/realm/d;

    iget-object v1, v1, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1, p2}, Lio/realm/internal/OsSharedRealm;->getTable(Ljava/lang/String;)Lio/realm/internal/Table;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lio/realm/k;->b(Ljava/lang/Class;)Lio/realm/internal/Table;

    move-result-object v3

    :goto_1
    sget-object p2, Lio/realm/internal/f;->b:Lio/realm/internal/f;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    new-instance p1, Lio/realm/i;

    cmp-long v0, p3, v1

    if-eqz v0, :cond_3

    iget-object p2, v3, Lio/realm/internal/Table;->q:Lio/realm/internal/g;

    sget v0, Lio/realm/internal/CheckedRow;->u:I

    iget-wide v0, v3, Lio/realm/internal/Table;->b:J

    invoke-virtual {v3, v0, v1, p3, p4}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide p3

    new-instance v0, Lio/realm/internal/CheckedRow;

    invoke-direct {v0, p2, v3, p3, p4}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    move-object p2, v0

    :cond_3
    invoke-direct {p1, p0, p2}, Lio/realm/i;-><init>(Lio/realm/d;Lio/realm/internal/A;)V

    return-object p1

    :cond_4
    iget-object v0, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->g:Lio/realm/internal/z;

    cmp-long v1, p3, v1

    if-eqz v1, :cond_5

    iget-object p2, v3, Lio/realm/internal/Table;->q:Lio/realm/internal/g;

    sget v1, Lio/realm/internal/UncheckedRow;->t:I

    iget-wide v1, v3, Lio/realm/internal/Table;->b:J

    invoke-virtual {v3, v1, v2, p3, p4}, Lio/realm/internal/Table;->nativeGetRowPtr(JJ)J

    move-result-wide p3

    new-instance v1, Lio/realm/internal/UncheckedRow;

    invoke-direct {v1, p2, v3, p3, p4}, Lio/realm/internal/UncheckedRow;-><init>(Lio/realm/internal/g;Lio/realm/internal/Table;J)V

    move-object p2, v1

    :cond_5
    invoke-virtual {p0}, Lio/realm/d;->x()Lio/realm/k;

    move-result-object p3

    invoke-virtual {p3, p1}, Lio/realm/k;->a(Ljava/lang/Class;)Lio/realm/internal/c;

    move-result-object p3

    sget-object p4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, p1, p0, p2, p3}, Lio/realm/internal/z;->k(Ljava/lang/Class;Ljava/lang/Object;Lio/realm/internal/A;Lio/realm/internal/c;)Lio/realm/M;

    move-result-object p1

    return-object p1
.end method

.method public abstract x()Lio/realm/k;
.end method

.method public final y()Z
    .locals 2

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lio/realm/d;->b:Z

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This Realm instance has already been closed, making it unusable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final z()Z
    .locals 1

    invoke-virtual {p0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->isInTransaction()Z

    move-result v0

    return v0
.end method
