.class public final Lcom/bumptech/glide/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static volatile w:Lcom/bumptech/glide/b;

.field public static volatile x:Z


# instance fields
.field public final b:LL1/b;

.field public final q:LM1/e;

.field public final r:Lcom/bumptech/glide/e;

.field public final s:LL1/g;

.field public final t:Lcom/bumptech/glide/manager/m;

.field public final u:Lu2/j;

.field public final v:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;LK1/o;LM1/e;LL1/b;LL1/g;Lcom/bumptech/glide/manager/m;Lu2/j;Lx2/f;Ln/e;Ljava/util/List;Ljava/util/ArrayList;LE5/l;Lcom/bumptech/glide/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/bumptech/glide/b;->b:LL1/b;

    iput-object p5, p0, Lcom/bumptech/glide/b;->s:LL1/g;

    iput-object p3, p0, Lcom/bumptech/glide/b;->q:LM1/e;

    iput-object p6, p0, Lcom/bumptech/glide/b;->t:Lcom/bumptech/glide/manager/m;

    iput-object p7, p0, Lcom/bumptech/glide/b;->u:Lu2/j;

    new-instance p4, Lcom/bumptech/glide/manager/r;

    invoke-direct {p4, p0, p11, p12}, Lcom/bumptech/glide/manager/r;-><init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;LE5/l;)V

    move-object p3, p5

    new-instance p5, Lu2/j;

    const/16 p6, 0xf

    invoke-direct {p5, p6}, Lu2/j;-><init>(I)V

    move-object p7, p9

    move-object p9, p2

    move-object p2, p1

    new-instance p1, Lcom/bumptech/glide/e;

    move-object p6, p8

    move-object p8, p10

    move-object p10, p13

    invoke-direct/range {p1 .. p10}, Lcom/bumptech/glide/e;-><init>(Landroid/content/Context;LL1/g;Lcom/bumptech/glide/manager/r;Lu2/j;Lx2/f;Ln/e;Ljava/util/List;LK1/o;Lcom/bumptech/glide/f;)V

    iput-object p1, p0, Lcom/bumptech/glide/b;->r:Lcom/bumptech/glide/e;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/bumptech/glide/b;
    .locals 4

    sget-object v0, Lcom/bumptech/glide/b;->w:Lcom/bumptech/glide/b;

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Glide"

    :try_start_0
    const-string v2, "com.bumptech.glide.GeneratedAppGlideModuleImpl"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/GeneratedAppGlideModule;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GeneratedAppGlideModuleImpl is implemented incorrectly. If you\'ve manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_4
    const/4 v0, 0x5

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/bumptech/glide/b;

    monitor-enter v1

    :try_start_1
    sget-object v2, Lcom/bumptech/glide/b;->w:Lcom/bumptech/glide/b;

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/bumptech/glide/b;->x:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    sput-boolean v2, Lcom/bumptech/glide/b;->x:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {p0, v0}, Lcom/bumptech/glide/b;->c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sput-boolean v2, Lcom/bumptech/glide/b;->x:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    sput-boolean v2, Lcom/bumptech/glide/b;->x:Z

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Glide has been called recursively, this is probably an internal library error!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_3
    :goto_2
    sget-object p0, Lcom/bumptech/glide/b;->w:Lcom/bumptech/glide/b;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/bumptech/glide/manager/m;
    .locals 1

    const-string v0, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    invoke-static {p0, v0}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    iget-object p0, p0, Lcom/bumptech/glide/b;->t:Lcom/bumptech/glide/manager/m;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/bumptech/glide/GeneratedAppGlideModule;)V
    .locals 28

    new-instance v9, Ln/e;

    invoke-direct {v9}, Ln/j;-><init>()V

    new-instance v1, LK1/A;

    const/4 v0, 0x2

    invoke-direct {v1, v0}, LK1/A;-><init>(I)V

    new-instance v8, Lx2/f;

    const/16 v0, 0x11

    invoke-direct {v8, v0}, Lx2/f;-><init>(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const-string v0, "Got app info metadata: "

    const-string v3, "ManifestParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Loading Glide modules"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x2

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x80

    invoke-virtual {v6, v7, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    iget-object v0, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v10, "GlideModule"

    iget-object v12, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v12, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {v7}, LH3/u0;->u(Ljava/lang/String;)Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Loaded Glide module: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Finished loading Glide modules"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    :goto_2
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Got null app info metadata"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const/4 v6, 0x6

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Failed to parse glide modules"

    invoke-static {v3, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_4
    const-string v0, "Glide"

    if-eqz p1, :cond_9

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_5

    :cond_7
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "AppGlideModule excludes manifest GlideModule: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_9
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v6, v4

    :goto_6
    if-ge v6, v3, :cond_a

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "Discovered GlideModule from manifest: "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v4

    :goto_7
    if-ge v3, v0, :cond_b

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v3, v3, 0x1

    check-cast v6, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_7

    :cond_b
    new-instance v0, LN1/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget v3, LN1/d;->r:I

    const/4 v6, 0x4

    if-nez v3, :cond_c

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, LN1/d;->r:I

    :cond_c
    sget v13, LN1/d;->r:I

    const-string v3, "source"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_17

    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v19, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v18, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v18 .. v18}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, LN1/b;

    invoke-direct {v7, v0, v3, v4}, LN1/b;-><init>(LN1/a;Ljava/lang/String;Z)V

    const-wide/16 v15, 0x0

    move v14, v13

    move-object/from16 v17, v19

    move-object/from16 v19, v7

    invoke-direct/range {v12 .. v19}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    move-object/from16 v19, v17

    new-instance v0, LN1/d;

    invoke-direct {v0, v12}, LN1/d;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v3, LN1/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const-string v7, "disk-cache"

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v10, LN1/b;

    const/4 v15, 0x1

    invoke-direct {v10, v3, v7, v15}, LN1/b;-><init>(LN1/a;Ljava/lang/String;Z)V

    const-wide/16 v17, 0x0

    move/from16 v16, v15

    move-object/from16 v21, v10

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v3, LN1/d;

    invoke-direct {v3, v14}, LN1/d;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    sget v7, LN1/d;->r:I

    if-nez v7, :cond_d

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sput v7, LN1/d;->r:I

    :cond_d
    sget v7, LN1/d;->r:I

    const/4 v10, 0x1

    if-lt v7, v6, :cond_e

    move v15, v5

    goto :goto_8

    :cond_e
    move v15, v10

    :goto_8
    new-instance v5, LN1/a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v6, "animation"

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v20, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v7, LN1/b;

    invoke-direct {v7, v5, v6, v10}, LN1/b;-><init>(LN1/a;Ljava/lang/String;Z)V

    const-wide/16 v17, 0x0

    move/from16 v16, v15

    move-object/from16 v21, v7

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v5, LN1/d;

    invoke-direct {v5, v14}, LN1/d;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v6, LM1/f;

    invoke-direct {v6, v2}, LM1/f;-><init>(Landroid/content/Context;)V

    new-instance v7, LE2/d;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iget-object v10, v6, LM1/f;->a:Landroid/content/Context;

    iget v12, v6, LM1/f;->d:F

    iget-object v13, v6, LM1/f;->b:Landroid/app/ActivityManager;

    invoke-virtual {v13}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v14

    if-eqz v14, :cond_f

    const/high16 v14, 0x200000

    goto :goto_9

    :cond_f
    const/high16 v14, 0x400000

    :goto_9
    iput v14, v7, LE2/d;->c:I

    invoke-virtual {v13}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v15

    const/high16 v16, 0x100000

    mul-int v15, v15, v16

    invoke-virtual {v13}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v16

    int-to-float v15, v15

    if-eqz v16, :cond_10

    const v16, 0x3ea8f5c3    # 0.33f

    goto :goto_a

    :cond_10
    const v16, 0x3ecccccd    # 0.4f

    :goto_a
    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    iget-object v6, v6, LM1/f;->c:LL2/o;

    iget-object v6, v6, LL2/o;->b:Ljava/lang/Object;

    check-cast v6, Landroid/util/DisplayMetrics;

    iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v4, v6

    mul-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    mul-float v6, v4, v12

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v4, v4, v16

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    move-object/from16 v24, v0

    sub-int v0, v15, v14

    move-object/from16 v23, v3

    add-int v3, v4, v6

    if-gt v3, v0, :cond_11

    iput v4, v7, LE2/d;->b:I

    iput v6, v7, LE2/d;->a:I

    goto :goto_b

    :cond_11
    int-to-float v0, v0

    add-float v4, v12, v16

    div-float/2addr v0, v4

    mul-float v16, v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v7, LE2/d;->b:I

    mul-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v7, LE2/d;->a:I

    :goto_b
    const/4 v0, 0x3

    const-string v4, "MemorySizeCalculator"

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Calculation complete, Calculated memory cache size: "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v7, LE2/d;->b:I

    move-object/from16 v26, v5

    int-to-long v5, v6

    invoke-static {v10, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", pool size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, LE2/d;->a:I

    int-to-long v5, v5

    invoke-static {v10, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", byte array size: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v14

    invoke-static {v10, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", memory class limited? "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v3, v15, :cond_12

    const/4 v3, 0x1

    goto :goto_c

    :cond_12
    const/4 v3, 0x0

    :goto_c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", max size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v5, v15

    invoke-static {v10, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", memoryClass: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isLowMemoryDevice: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_13
    move-object/from16 v26, v5

    :goto_d
    new-instance v0, Lu2/j;

    const/16 v3, 0x12

    invoke-direct {v0, v3}, Lu2/j;-><init>(I)V

    iget v3, v7, LE2/d;->a:I

    if-lez v3, :cond_14

    new-instance v4, LL1/h;

    int-to-long v5, v3

    invoke-direct {v4, v5, v6}, LL1/h;-><init>(J)V

    goto :goto_e

    :cond_14
    new-instance v4, Lu2/j;

    const/16 v3, 0x9

    invoke-direct {v4, v3}, Lu2/j;-><init>(I)V

    :goto_e
    new-instance v5, LL1/g;

    iget v3, v7, LE2/d;->c:I

    invoke-direct {v5, v3}, LL1/g;-><init>(I)V

    new-instance v3, LM1/e;

    iget v6, v7, LE2/d;->b:I

    int-to-long v6, v6

    invoke-direct {v3, v6, v7}, Ld2/j;-><init>(J)V

    new-instance v6, LL2/o;

    new-instance v7, LC2/c;

    const/4 v10, 0x0

    invoke-direct {v7, v2, v10}, LC2/c;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v7, v6, LL2/o;->b:Ljava/lang/Object;

    new-instance v7, LK1/o;

    new-instance v10, LN1/d;

    new-instance v14, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-wide v17, LN1/d;->q:J

    new-instance v20, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct/range {v20 .. v20}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v12, LN1/b;

    new-instance v13, LN1/a;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    const-string v15, "source-unlimited"

    move-object/from16 v27, v0

    const/4 v0, 0x0

    invoke-direct {v12, v13, v15, v0}, LN1/b;-><init>(LN1/a;Ljava/lang/String;Z)V

    const/4 v15, 0x0

    const v16, 0x7fffffff

    move-object/from16 v21, v12

    invoke-direct/range {v14 .. v21}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    invoke-direct {v10, v14}, LN1/d;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    move-object/from16 v21, v3

    move-object/from16 v22, v6

    move-object/from16 v20, v7

    move-object/from16 v25, v10

    invoke-direct/range {v20 .. v26}, LK1/o;-><init>(LM1/e;LL2/o;LN1/d;LN1/d;LN1/d;LN1/d;)V

    sget-object v10, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    new-instance v13, Lcom/bumptech/glide/f;

    invoke-direct {v13, v1}, Lcom/bumptech/glide/f;-><init>(LK1/A;)V

    new-instance v6, Lcom/bumptech/glide/manager/m;

    invoke-direct {v6}, Lcom/bumptech/glide/manager/m;-><init>()V

    new-instance v0, Lcom/bumptech/glide/b;

    move-object/from16 v12, p1

    move-object v1, v2

    move-object/from16 v2, v20

    move-object/from16 v7, v27

    invoke-direct/range {v0 .. v13}, Lcom/bumptech/glide/b;-><init>(Landroid/content/Context;LK1/o;LM1/e;LL1/b;LL1/g;Lcom/bumptech/glide/manager/m;Lu2/j;Lx2/f;Ln/e;Ljava/util/List;Ljava/util/ArrayList;LE5/l;Lcom/bumptech/glide/f;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    sput-object v0, Lcom/bumptech/glide/b;->w:Lcom/bumptech/glide/b;

    return-void

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: animation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: disk-cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must be non-null and non-empty, but given: source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(LB4/s;)Lcom/bumptech/glide/m;
    .locals 11

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/manager/m;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v1

    const-string v2, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    invoke-static {v1, v2}, Ld2/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ld2/n;->a:[C

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/bumptech/glide/manager/m;->q:Lcom/bumptech/glide/manager/g;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->g()Lf/i;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bumptech/glide/manager/g;->f(Lf/i;)V

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v9

    invoke-virtual {p0}, Landroidx/fragment/app/t;->j()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v7

    iget-object v5, v0, Lcom/bumptech/glide/manager/m;->r:Lcom/bumptech/glide/manager/k;

    iget-object v8, p0, Landroidx/fragment/app/t;->b0:Landroidx/lifecycle/t;

    invoke-virtual {p0}, Landroidx/fragment/app/t;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/t;->q()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroidx/fragment/app/t;->T:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_3

    move v10, v4

    goto :goto_1

    :cond_3
    move v10, v3

    :goto_1
    invoke-virtual/range {v5 .. v10}, Lcom/bumptech/glide/manager/k;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Landroidx/lifecycle/t;Landroidx/fragment/app/K;Z)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;)Lcom/bumptech/glide/m;
    .locals 1

    invoke-static {p0}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/manager/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/manager/m;->b(Landroid/content/Context;)Lcom/bumptech/glide/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    invoke-static {}, Ld2/n;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->q:LM1/e;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ld2/j;->f(J)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->b:LL1/b;

    invoke-interface {v0}, LL1/b;->m()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->s:LL1/g;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, LL1/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final onTrimMemory(I)V
    .locals 9

    invoke-static {}, Ld2/n;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/b;->v:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/bumptech/glide/m;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/bumptech/glide/b;->q:LM1/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xf

    const/16 v2, 0x14

    const/16 v4, 0x28

    if-lt p1, v4, :cond_1

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Ld2/j;->f(J)V

    goto :goto_1

    :cond_1
    if-ge p1, v2, :cond_2

    if-ne p1, v0, :cond_3

    :cond_2
    monitor-enter v1

    :try_start_1
    iget-wide v5, v1, Ld2/j;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    monitor-exit v1

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ld2/j;->f(J)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/b;->b:LL1/b;

    invoke-interface {v1, p1}, LL1/b;->k(I)V

    iget-object v5, p0, Lcom/bumptech/glide/b;->s:LL1/g;

    monitor-enter v5

    if-lt p1, v4, :cond_4

    :try_start_2
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v5, v3}, LL1/g;->b(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_4
    if-ge p1, v2, :cond_5

    if-ne p1, v0, :cond_6

    :cond_5
    iget p1, v5, LL1/g;->e:I

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v5, p1}, LL1/g;->b(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    :goto_2
    monitor-exit v5

    return-void

    :catchall_2
    move-exception p1

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p1

    :goto_3
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw p1
.end method
