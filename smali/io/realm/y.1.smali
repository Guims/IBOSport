.class public final Lio/realm/y;
.super Lio/realm/d;


# static fields
.field public static final A:Ljava/lang/Object;


# instance fields
.field public final z:Lio/realm/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/realm/y;->A:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lio/realm/G;Lio/realm/internal/t;)V
    .locals 2

    iget-object v0, p1, Lio/realm/G;->c:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->g:Lio/realm/internal/z;

    new-instance v1, Lio/realm/internal/OsSchemaInfo;

    invoke-virtual {v0}, Lio/realm/internal/z;->d()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Lio/realm/internal/OsSchemaInfo;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v1, p2}, Lio/realm/d;-><init>(Lio/realm/G;Lio/realm/internal/OsSchemaInfo;Lio/realm/internal/t;)V

    new-instance p1, Lio/realm/k;

    new-instance p2, LK1/c;

    iget-object v0, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->g:Lio/realm/internal/z;

    iget-object v1, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object v1

    invoke-direct {p2, v0, v1}, LK1/c;-><init>(Lio/realm/internal/z;Lio/realm/internal/OsSchemaInfo;)V

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lio/realm/k;-><init>(Lio/realm/d;LK1/c;I)V

    iput-object p1, p0, Lio/realm/y;->z:Lio/realm/k;

    iget-object p1, p0, Lio/realm/d;->r:Lio/realm/J;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lio/realm/internal/OsSharedRealm;)V
    .locals 3

    invoke-direct {p0, p1}, Lio/realm/d;-><init>(Lio/realm/internal/OsSharedRealm;)V

    new-instance v0, Lio/realm/k;

    new-instance v1, LK1/c;

    iget-object v2, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v2, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->getSchemaInfo()Lio/realm/internal/OsSchemaInfo;

    move-result-object p1

    invoke-direct {v1, v2, p1}, LK1/c;-><init>(Lio/realm/internal/z;Lio/realm/internal/OsSchemaInfo;)V

    const/4 p1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/realm/k;-><init>(Lio/realm/d;LK1/c;I)V

    iput-object v0, p0, Lio/realm/y;->z:Lio/realm/k;

    return-void
.end method

.method public static D(Lio/realm/J;)Lio/realm/y;
    .locals 3

    if-eqz p0, :cond_0

    sget-object v0, Lio/realm/G;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lio/realm/J;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/realm/G;->b(Ljava/lang/String;Z)Lio/realm/G;

    move-result-object v0

    sget-object v1, Lio/realm/internal/t;->r:Lio/realm/internal/t;

    const-class v2, Lio/realm/y;

    invoke-virtual {v0, p0, v2, v1}, Lio/realm/G;->a(Lio/realm/J;Ljava/lang/Class;Lio/realm/internal/t;)Lio/realm/d;

    move-result-object p0

    check-cast p0, Lio/realm/y;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "A non-null RealmConfiguration must be provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static E(Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lio/realm/d;->v:Landroid/content/Context;

    if-nez v0, :cond_c

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_2
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    const-wide/16 v1, 0x0

    const/4 v3, -0x1

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget-wide v4, v0, v4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    add-long/2addr v1, v4

    const-wide/16 v4, 0xc8

    cmp-long v4, v1, v4

    if-lez v4, :cond_3

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, LC2/a;->w(Landroid/content/pm/PackageManager;)Z

    move-result v0

    goto :goto_1

    :cond_6
    :try_start_1
    const-string v0, "com.google.android.gms.instantapps.InstantApps"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getPackageManagerCompat"

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "com.google.android.gms.instantapps.PackageManagerCompat"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "isInstantApp"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_9

    invoke-static {p0}, Lio/realm/internal/w;->a(Landroid/content/Context;)V

    new-instance v0, Lio/realm/I;

    invoke-direct {v0, p0}, Lio/realm/I;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/realm/I;->a()Lio/realm/J;

    sget-object v0, Lio/realm/y;->A:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    sget-object v0, Lio/realm/internal/j;->a:Lio/realm/internal/j;

    :goto_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lio/realm/d;->v:Landroid/content/Context;

    goto :goto_3

    :cond_8
    sput-object p0, Lio/realm/d;->v:Landroid/content/Context;

    :goto_3
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, ".realm.temp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lio/realm/internal/OsSharedRealm;->initialize(Ljava/io/File;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_9
    new-instance p0, Lio/realm/exceptions/RealmError;

    const-string v0, "Could not initialize Realm: Instant apps are not currently supported."

    invoke-direct {p0, v0}, Lio/realm/exceptions/RealmError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Context.getFilesDir() returns "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " which is not an existing directory. See https://issuetracker.google.com/issues/36918154"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Non-null context required."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    return-void

    nop

    :array_0
    .array-data 8
        0x1
        0x2
        0x5
        0xa
        0x10
    .end array-data
.end method


# virtual methods
.method public final varargs A(Ljava/lang/Iterable;[Lio/realm/l;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-void

    :cond_0
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/realm/M;

    if-eqz v2, :cond_7

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v4, 0x0

    :goto_2
    array-length v5, p2

    if-ge v4, v5, :cond_3

    aget-object v5, p2, v4

    if-eqz v5, :cond_2

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lio/realm/d;->b()V

    invoke-virtual {p0}, Lio/realm/d;->z()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v5, v4, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lio/realm/internal/Util;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/realm/internal/z;->j(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5

    :try_start_0
    iget-object v4, v4, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {v4, p0, v2, v1, v3}, Lio/realm/internal/z;->a(Lio/realm/y;Lio/realm/M;Ljava/util/HashMap;Ljava/util/Set;)Lio/realm/M;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Attempting to create an object of type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lio/realm/exceptions/RealmPrimaryKeyConstraintException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Embedded objects cannot be copied into Realm by themselves. They need to be attached to a parent object"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "`copyOrUpdate` can only be called inside a write transaction."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null objects cannot be copied into Realm."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    return-void
.end method

.method public final B(Lio/realm/x;)V
    .locals 2

    invoke-virtual {p0}, Lio/realm/d;->b()V

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

    iget-boolean v0, v0, Lio/realm/J;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lio/realm/exceptions/RealmException;

    const-string v0, "Running transactions on the UI thread has been disabled. It can be enabled by setting \'RealmConfiguration.Builder.allowWritesOnUiThread(true)\'."

    invoke-direct {p1, v0}, Lio/realm/exceptions/RealmException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->beginTransaction()V

    :try_start_0
    invoke-interface {p1, p0}, Lio/realm/x;->j(Lio/realm/y;)V

    invoke-virtual {p0}, Lio/realm/d;->b()V

    iget-object p1, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {p1}, Lio/realm/internal/OsSharedRealm;->commitTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lio/realm/d;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lio/realm/d;->b()V

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->cancelTransaction()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Could not cancel transaction, not currently in a transaction."

    invoke-static {v1, v0}, Lio/realm/log/RealmLog;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    throw p1
.end method

.method public final C(Lio/realm/x;LA3/d;)LM4/a;
    .locals 9

    invoke-virtual {p0}, Lio/realm/d;->b()V

    invoke-virtual {p0}, Lio/realm/d;->y()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v0, v0, Lio/realm/internal/OsSharedRealm;->capabilities:Lio/realm/internal/a;

    move-object v1, v0

    check-cast v1, LB0/i;

    iget-object v2, v1, LB0/i;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Looper;

    if-eqz v2, :cond_0

    iget-boolean v1, v1, LB0/i;->a:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v6, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "Callback cannot be delivered on current thread."

    check-cast v0, LB0/i;

    invoke-virtual {v0, v1}, LB0/i;->b(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    iget-object v8, v0, Lio/realm/internal/OsSharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v2, Lio/realm/w;

    iget-object v4, p0, Lio/realm/d;->r:Lio/realm/J;

    move-object v3, p0

    move-object v5, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v8}, Lio/realm/w;-><init>(Lio/realm/y;Lio/realm/J;Lio/realm/x;ZLA3/d;Lio/realm/internal/RealmNotifier;)V

    sget-object p1, Lio/realm/d;->w:LM4/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LA4/f;

    const/16 v0, 0x9

    invoke-direct {p2, v0, v2}, LA4/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    new-instance p2, LM4/a;

    invoke-direct {p2, p1}, LM4/a;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Write transactions on a frozen Realm is not allowed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final F(Ljava/util/Collection;)V
    .locals 1

    invoke-virtual {p0}, Lio/realm/d;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v0, v0, Lio/realm/J;->g:Lio/realm/internal/z;

    invoke-virtual {v0, p0, p1}, Lio/realm/internal/z;->i(Lio/realm/y;Ljava/util/Collection;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null objects cannot be inserted into Realm."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Changing Realm data can only be done from inside a transaction."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final G(Ljava/lang/Class;)Lio/realm/RealmQuery;
    .locals 1

    invoke-virtual {p0}, Lio/realm/d;->b()V

    new-instance v0, Lio/realm/RealmQuery;

    invoke-direct {v0, p0, p1}, Lio/realm/RealmQuery;-><init>(Lio/realm/y;Ljava/lang/Class;)V

    return-object v0
.end method

.method public final h()Lio/realm/d;
    .locals 4

    iget-object v0, p0, Lio/realm/d;->t:Lio/realm/internal/OsSharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/OsSharedRealm;->getVersionID()Lio/realm/internal/t;

    move-result-object v0

    sget-object v1, Lio/realm/G;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/realm/d;->r:Lio/realm/J;

    iget-object v2, v1, Lio/realm/J;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lio/realm/G;->b(Ljava/lang/String;Z)Lio/realm/G;

    move-result-object v2

    const-class v3, Lio/realm/y;

    invoke-virtual {v2, v1, v3, v0}, Lio/realm/G;->a(Lio/realm/J;Ljava/lang/Class;Lio/realm/internal/t;)Lio/realm/d;

    move-result-object v0

    check-cast v0, Lio/realm/y;

    return-object v0
.end method

.method public final x()Lio/realm/k;
    .locals 1

    iget-object v0, p0, Lio/realm/y;->z:Lio/realm/k;

    return-object v0
.end method
