.class public final Lio/realm/G;
.super Ljava/lang/Object;


# static fields
.field public static final e:Ljava/util/ArrayList;

.field public static final f:Ljava/util/concurrent/ConcurrentLinkedQueue;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Ljava/lang/String;

.field public c:Lio/realm/J;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lio/realm/G;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lio/realm/G;->f:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/realm/G;->a:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/realm/G;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lio/realm/G;->b:Ljava/lang/String;

    return-void
.end method

.method public static b(Ljava/lang/String;Z)Lio/realm/G;
    .locals 5

    sget-object v0, Lio/realm/G;->e:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/realm/G;

    if-nez v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lio/realm/G;->b:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    if-eqz p1, :cond_3

    new-instance v2, Lio/realm/G;

    invoke-direct {v2, p0}, Lio/realm/G;-><init>(Ljava/lang/String;)V

    sget-object p0, Lio/realm/G;->e:Ljava/util/ArrayList;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v0

    return-object v2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Lio/realm/J;Ljava/lang/Class;Lio/realm/internal/t;)Lio/realm/d;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p2, p3}, Lio/realm/G;->c(Ljava/lang/Class;Lio/realm/internal/t;)Lio/realm/E;

    move-result-object v0

    invoke-virtual {p0}, Lio/realm/G;->d()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lio/realm/J;->c:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    iput-object p1, p0, Lio/realm/G;->c:Lio/realm/J;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {p0, p1}, Lio/realm/G;->e(Lio/realm/J;)V

    :goto_1
    invoke-virtual {v0}, Lio/realm/E;->d()Z

    move-result v3

    if-nez v3, :cond_4

    const-class v3, Lio/realm/y;

    if-ne p2, v3, :cond_2

    new-instance p2, Lio/realm/y;

    invoke-direct {p2, p0, p3}, Lio/realm/y;-><init>(Lio/realm/G;Lio/realm/internal/t;)V

    iget-object p3, p2, Lio/realm/y;->z:Lio/realm/k;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lio/realm/internal/objectstore/OsKeyPathMapping;

    iget-object v4, p3, Lio/realm/k;->f:Lio/realm/d;

    iget-object v4, v4, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v4}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lio/realm/internal/objectstore/OsKeyPathMapping;-><init>(J)V

    iput-object v3, p3, Lio/realm/k;->e:Lio/realm/internal/objectstore/OsKeyPathMapping;

    goto :goto_2

    :cond_2
    const-class v3, Lio/realm/f;

    if-ne p2, v3, :cond_3

    new-instance p2, Lio/realm/f;

    invoke-direct {p2, p0, p3}, Lio/realm/f;-><init>(Lio/realm/G;Lio/realm/internal/t;)V

    :goto_2
    invoke-virtual {v0, p2}, Lio/realm/E;->e(Lio/realm/d;)V

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_3
    iget-object p2, v0, Lio/realm/E;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr v2, p3

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lio/realm/E;->b()Lio/realm/d;

    move-result-object p2

    if-eqz v1, :cond_8

    sget-object p3, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    if-eqz p3, :cond_6

    goto :goto_4

    :cond_6
    sget-object p3, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    :goto_4
    iget-object p3, p2, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    new-instance v0, Lio/realm/y;

    invoke-direct {v0, p3}, Lio/realm/y;-><init>(Lio/realm/internal/OsSharedRealm;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Lio/realm/d;->b()V

    invoke-virtual {p2}, Lio/realm/d;->a()V

    invoke-virtual {p2}, Lio/realm/d;->z()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p2, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->refresh()V

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot refresh a Realm instance inside a transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_5
    monitor-exit p0

    return-object p2

    :goto_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(Ljava/lang/Class;Lio/realm/internal/t;)Lio/realm/E;
    .locals 2

    const-class v0, Lio/realm/y;

    if-ne p1, v0, :cond_0

    sget-object p1, Lio/realm/D;->b:Lio/realm/D;

    goto :goto_0

    :cond_0
    const-class v0, Lio/realm/f;

    if-ne p1, v0, :cond_3

    sget-object p1, Lio/realm/D;->q:Lio/realm/D;

    :goto_0
    new-instance v0, LO4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, LO4/a;->a:Lio/realm/D;

    iput-object p2, v0, LO4/a;->b:Lio/realm/internal/t;

    iget-object p1, p0, Lio/realm/G;->a:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/realm/E;

    if-nez v1, :cond_2

    sget-object v1, Lio/realm/internal/t;->r:Lio/realm/internal/t;

    invoke-virtual {p2, v1}, Lio/realm/internal/t;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lio/realm/F;

    invoke-direct {p2}, Lio/realm/F;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p2, Lio/realm/C;

    invoke-direct {p2}, Lio/realm/E;-><init>()V

    :goto_1
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_2
    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The type of Realm class must be Realm or DynamicRealm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lio/realm/G;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/E;

    iget-object v2, v2, Lio/realm/E;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final e(Lio/realm/J;)V
    .locals 3

    iget-object v0, p0, Lio/realm/G;->c:Lio/realm/J;

    invoke-virtual {v0, p1}, Lio/realm/J;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/realm/G;->c:Lio/realm/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/realm/G;->c:Lio/realm/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Configurations cannot be different if used to open the same file. \nCached configuration: \n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/realm/G;->c:Lio/realm/J;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n\nNew configuration: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong key used to decrypt Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
