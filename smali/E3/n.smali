.class public final LE3/n;
.super Ljava/lang/Object;


# static fields
.field public static final r:LE3/h;

.field public static final s:Ljava/nio/charset/Charset;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LE1/E;

.field public final c:LA/j;

.field public final d:LK3/c;

.field public final e:LF3/d;

.field public final f:LE3/w;

.field public final g:LK3/c;

.field public final h:LE3/a;

.field public final i:LG3/e;

.field public final j:LB3/b;

.field public final k:LC3/a;

.field public final l:LE3/j;

.field public final m:LD5/g;

.field public n:LE3/s;

.field public final o:LL2/i;

.field public final p:LL2/i;

.field public final q:LL2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LE3/h;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LE3/h;-><init>(I)V

    sput-object v0, LE3/n;->r:LE3/h;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, LE3/n;->s:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LE3/w;LE1/E;LK3/c;LA/j;LE3/a;LK3/c;LG3/e;LD5/g;LB3/b;LC3/a;LE3/j;LF3/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LL2/i;

    invoke-direct {v0}, LL2/i;-><init>()V

    iput-object v0, p0, LE3/n;->o:LL2/i;

    new-instance v0, LL2/i;

    invoke-direct {v0}, LL2/i;-><init>()V

    iput-object v0, p0, LE3/n;->p:LL2/i;

    new-instance v0, LL2/i;

    invoke-direct {v0}, LL2/i;-><init>()V

    iput-object v0, p0, LE3/n;->q:LL2/i;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, LE3/n;->a:Landroid/content/Context;

    iput-object p2, p0, LE3/n;->f:LE3/w;

    iput-object p3, p0, LE3/n;->b:LE1/E;

    iput-object p4, p0, LE3/n;->g:LK3/c;

    iput-object p5, p0, LE3/n;->c:LA/j;

    iput-object p6, p0, LE3/n;->h:LE3/a;

    iput-object p7, p0, LE3/n;->d:LK3/c;

    iput-object p8, p0, LE3/n;->i:LG3/e;

    iput-object p10, p0, LE3/n;->j:LB3/b;

    iput-object p11, p0, LE3/n;->k:LC3/a;

    iput-object p12, p0, LE3/n;->l:LE3/j;

    iput-object p9, p0, LE3/n;->m:LD5/g;

    iput-object p13, p0, LE3/n;->e:LF3/d;

    return-void
.end method

.method public static a(LE3/n;)LL2/r;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FirebaseCrashlytics"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, LE3/n;->g:LK3/c;

    iget-object v2, v2, LK3/c;->r:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    sget-object v3, LE3/n;->r:LE3/h;

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "com.google.firebase.crash.FirebaseCrash"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v5, "Skipping logging Crashlytics event to Firebase, FirebaseCrash exists"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v4}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object v5

    goto :goto_1

    :catch_0
    const-string v5, "Logging app exception event to Firebase Analytics"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0, v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v5, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    new-instance v6, LE3/m;

    invoke-direct {v6, p0, v7, v8}, LE3/m;-><init>(LE3/n;J)V

    invoke-static {v5, v6}, LE5/l;->i(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)LL2/r;

    move-result-object v5

    :goto_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Could not parse app exception timestamp from file "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    invoke-static {v1}, LE5/l;->D(Ljava/util/List;)LL2/r;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(ZLM3/c;Z)V
    .locals 31

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-static {}, LF3/d;->a()V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v1, LE3/n;->m:LD5/g;

    iget-object v0, v0, LD5/g;->b:Ljava/lang/Object;

    check-cast v0, LK3/a;

    invoke-virtual {v0}, LK3/a;->c()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-gt v0, v2, :cond_0

    const-string v0, "No open sessions to be closed."

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_38

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p3, :cond_1c

    invoke-virtual/range {p2 .. p2}, LM3/c;->b()LM3/b;

    move-result-object v0

    iget-object v0, v0, LM3/b;->b:LK1/j;

    iget-boolean v0, v0, LK1/j;->b:Z

    if-eqz v0, :cond_1c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x1e

    if-lt v0, v12, :cond_1b

    iget-object v0, v1, LE3/n;->a:Landroid/content/Context;

    const-string v12, "activity"

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, LE3/k;->p(Landroid/app/ActivityManager;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_19

    new-instance v13, LG3/e;

    iget-object v0, v1, LE3/n;->g:LK3/c;

    invoke-direct {v13, v0}, LG3/e;-><init>(LK3/c;)V

    sget-object v14, LG3/e;->c:Lx2/f;

    iput-object v14, v13, LG3/e;->b:Ljava/lang/Object;

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v14, "userlog"

    invoke-virtual {v0, v6, v14}, LK3/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v14, LG3/l;

    invoke-direct {v14, v0}, LG3/l;-><init>(Ljava/io/File;)V

    iput-object v14, v13, LG3/e;->b:Ljava/lang/Object;

    :goto_0
    iget-object v0, v1, LE3/n;->g:LK3/c;

    iget-object v14, v1, LE3/n;->e:LF3/d;

    new-instance v15, LG3/g;

    invoke-direct {v15, v0}, LG3/g;-><init>(LK3/c;)V

    const/16 v16, 0x4

    new-instance v9, LK3/c;

    invoke-direct {v9, v6, v0, v14}, LK3/c;-><init>(Ljava/lang/String;LK3/c;LF3/d;)V

    iget-object v14, v9, LK3/c;->s:Ljava/lang/Object;

    check-cast v14, LE1/d;

    iget-object v14, v14, LE1/d;->b:Ljava/lang/Object;

    check-cast v14, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, LG3/d;

    const/16 v17, 0x8

    invoke-virtual {v15, v6, v11}, LG3/g;->c(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v14, v7}, LG3/d;->c(Ljava/util/Map;)V

    iget-object v7, v9, LK3/c;->t:Ljava/lang/Object;

    check-cast v7, LE1/d;

    iget-object v7, v7, LE1/d;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LG3/d;

    invoke-virtual {v15, v6, v10}, LG3/g;->c(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v14

    invoke-virtual {v7, v14}, LG3/d;->c(Ljava/util/Map;)V

    iget-object v7, v9, LK3/c;->v:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v15, v6}, LG3/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14, v11}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->set(Ljava/lang/Object;Z)V

    iget-object v7, v9, LK3/c;->u:Ljava/lang/Object;

    check-cast v7, LA5/r;

    const-string v14, "Failed to close rollouts state file."

    const-string v15, "FirebaseCrashlytics"

    move/from16 v18, v10

    const-string v10, "Loaded rollouts state:\n"

    const-string v4, "rollouts-state"

    invoke-virtual {v0, v6, v4}, LK3/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmp-long v0, v20, v22

    if-nez v0, :cond_2

    goto :goto_4

    :cond_2
    :try_start_0
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v11}, LE3/g;->i(Ljava/io/FileInputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG3/g;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "\nfor session "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x0

    invoke-static {v15, v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    invoke-static {v11, v14}, LE3/g;->b(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_5

    :goto_1
    move-object v5, v11

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    const/4 v5, 0x0

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v11, 0x0

    :goto_2
    :try_start_2
    const-string v5, "Error deserializing rollouts state."

    invoke-static {v15, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v4}, LG3/g;->f(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11, v14}, LE3/g;->b(Ljava/io/Closeable;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    :goto_3
    invoke-static {v5, v14}, LE3/g;->b(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "The file has a length of zero for session: "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, LG3/g;->g(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_5
    const-string v4, "Ignored 0 entries when adding rollout assignments. Maximum allowable: "

    monitor-enter v7

    :try_start_3
    iget-object v5, v7, LA5/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget v10, v7, LA5/r;->b:I

    if-le v5, v10, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v7, LA5/r;->b:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FirebaseCrashlytics"

    const/4 v10, 0x0

    invoke-static {v5, v4, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v4, v7, LA5/r;->b:I

    const/4 v5, 0x0

    invoke-interface {v0, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iget-object v4, v7, LA5/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v7

    goto :goto_6

    :catchall_2
    move-exception v0

    goto/16 :goto_e

    :cond_5
    :try_start_4
    iget-object v4, v7, LA5/r;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v7

    :goto_6
    iget-object v0, v1, LE3/n;->m:LD5/g;

    const-string v4, "FirebaseCrashlytics"

    iget-object v5, v0, LD5/g;->b:Ljava/lang/Object;

    check-cast v5, LK3/a;

    iget-object v7, v5, LK3/a;->b:LK3/c;

    const-string v10, "start-time"

    invoke-virtual {v7, v6, v10}, LK3/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, LE3/k;->g(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v12

    invoke-static {v12}, LE3/k;->e(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v14

    cmp-long v14, v14, v10

    if-gez v14, :cond_7

    :cond_6
    const/4 v12, 0x0

    goto :goto_8

    :cond_7
    invoke-static {v12}, LE3/k;->c(Landroid/app/ApplicationExitInfo;)I

    move-result v14

    const/4 v15, 0x6

    if-eq v14, v15, :cond_8

    goto :goto_7

    :cond_8
    :goto_8
    if-nez v12, :cond_a

    const-string v0, "No relevant ApplicationExitInfo occurred during session: "

    invoke-static {v0, v6}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v10, 0x0

    invoke-static {v4, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    move-object/from16 v30, v3

    move/from16 v8, v18

    goto/16 :goto_d

    :cond_a
    iget-object v0, v0, LD5/g;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, LE3/r;

    :try_start_5
    invoke-static {v12}, LE3/k;->n(Landroid/app/ApplicationExitInfo;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, LD5/g;->m(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_9

    :catch_2
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Could not get input trace in application exit info: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, LE3/k;->o(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " Error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v4, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    const/4 v0, 0x0

    :goto_9
    new-instance v10, LH3/C;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    invoke-static {v12}, LE3/k;->x(Landroid/app/ApplicationExitInfo;)I

    move-result v11

    iput v11, v10, LH3/C;->d:I

    iget-byte v11, v10, LH3/C;->j:B

    or-int/lit8 v11, v11, 0x4

    int-to-byte v11, v11

    iput-byte v11, v10, LH3/C;->j:B

    invoke-static {v12}, LE3/k;->A(Landroid/app/ApplicationExitInfo;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_18

    iput-object v11, v10, LH3/C;->b:Ljava/lang/String;

    invoke-static {v12}, LE3/k;->c(Landroid/app/ApplicationExitInfo;)I

    move-result v11

    iput v11, v10, LH3/C;->c:I

    iget-byte v11, v10, LH3/C;->j:B

    const/16 v19, 0x2

    or-int/lit8 v11, v11, 0x2

    int-to-byte v11, v11

    iput-byte v11, v10, LH3/C;->j:B

    invoke-static {v12}, LE3/k;->e(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v14

    iput-wide v14, v10, LH3/C;->g:J

    iget-byte v11, v10, LH3/C;->j:B

    or-int/lit8 v11, v11, 0x20

    int-to-byte v11, v11

    iput-byte v11, v10, LH3/C;->j:B

    invoke-static {v12}, LE3/k;->C(Landroid/app/ApplicationExitInfo;)I

    move-result v11

    iput v11, v10, LH3/C;->a:I

    iget-byte v11, v10, LH3/C;->j:B

    or-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    iput-byte v11, v10, LH3/C;->j:B

    invoke-static {v12}, LE3/k;->y(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v14

    iput-wide v14, v10, LH3/C;->e:J

    iget-byte v11, v10, LH3/C;->j:B

    or-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    iput-byte v11, v10, LH3/C;->j:B

    invoke-static {v12}, LE3/k;->D(Landroid/app/ApplicationExitInfo;)J

    move-result-wide v11

    iput-wide v11, v10, LH3/C;->f:J

    iget-byte v11, v10, LH3/C;->j:B

    or-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    iput-byte v11, v10, LH3/C;->j:B

    iput-object v0, v10, LH3/C;->h:Ljava/lang/String;

    invoke-virtual {v10}, LH3/C;->a()LH3/D;

    move-result-object v0

    iget-object v10, v7, LE3/r;->a:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    new-instance v11, LH3/O;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    const-string v12, "anr"

    iput-object v12, v11, LH3/O;->b:Ljava/lang/String;

    iget-wide v14, v0, LH3/D;->g:J

    iput-wide v14, v11, LH3/O;->a:J

    iget-byte v12, v11, LH3/O;->g:B

    or-int/lit8 v12, v12, 0x1

    int-to-byte v12, v12

    iput-byte v12, v11, LH3/O;->g:B

    iget-object v12, v7, LE3/r;->c:LE3/a;

    iget-object v8, v7, LE3/r;->e:LM3/c;

    invoke-virtual {v8}, LM3/c;->b()LM3/b;

    move-result-object v8

    iget-object v8, v8, LM3/b;->b:LK1/j;

    iget-boolean v8, v8, LK1/j;->c:Z

    if-eqz v8, :cond_10

    iget-object v8, v12, LE3/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v12, LE3/a;->c:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v29, v10

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v2, :cond_f

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    add-int/lit8 v10, v10, 0x1

    move/from16 p2, v2

    move-object/from16 v2, v22

    check-cast v2, LE3/d;

    move/from16 v22, v10

    iget-object v10, v2, LE3/d;->a:Ljava/lang/String;

    if-eqz v10, :cond_e

    move-object/from16 v23, v12

    iget-object v12, v2, LE3/d;->b:Ljava/lang/String;

    if-eqz v12, :cond_d

    iget-object v2, v2, LE3/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object/from16 v30, v3

    new-instance v3, LH3/E;

    invoke-direct {v3, v12, v10, v2}, LH3/E;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v2, p2

    move/from16 v10, v22

    move-object/from16 v12, v23

    move-object/from16 v3, v30

    goto :goto_a

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null buildId"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null arch"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null libraryName"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move-object/from16 v30, v3

    invoke-static {v8}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :cond_10
    move-object/from16 v30, v3

    move/from16 v29, v10

    const/4 v2, 0x0

    :goto_b
    new-instance v3, LH3/C;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget v8, v0, LH3/D;->d:I

    iput v8, v3, LH3/C;->d:I

    iget-byte v8, v3, LH3/C;->j:B

    or-int/lit8 v8, v8, 0x4

    int-to-byte v8, v8

    iput-byte v8, v3, LH3/C;->j:B

    iget-object v10, v0, LH3/D;->b:Ljava/lang/String;

    if-eqz v10, :cond_17

    iput-object v10, v3, LH3/C;->b:Ljava/lang/String;

    iget v10, v0, LH3/D;->c:I

    iput v10, v3, LH3/C;->c:I

    const/16 v19, 0x2

    or-int/lit8 v8, v8, 0x2

    int-to-byte v8, v8

    iput-wide v14, v3, LH3/C;->g:J

    or-int/lit8 v8, v8, 0x20

    int-to-byte v8, v8

    iget v10, v0, LH3/D;->a:I

    iput v10, v3, LH3/C;->a:I

    or-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    iget-wide v14, v0, LH3/D;->e:J

    iput-wide v14, v3, LH3/C;->e:J

    or-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    iget-wide v14, v0, LH3/D;->f:J

    iput-wide v14, v3, LH3/C;->f:J

    or-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    iput-byte v8, v3, LH3/C;->j:B

    iget-object v0, v0, LH3/D;->h:Ljava/lang/String;

    iput-object v0, v3, LH3/C;->h:Ljava/lang/String;

    iput-object v2, v3, LH3/C;->i:Ljava/util/List;

    invoke-virtual {v3}, LH3/C;->a()LH3/D;

    move-result-object v0

    iget v2, v0, LH3/D;->d:I

    const/16 v3, 0x64

    if-eq v2, v3, :cond_11

    move/from16 v2, v18

    goto :goto_c

    :cond_11
    const/4 v2, 0x0

    :goto_c
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, v0, LH3/D;->b:Ljava/lang/String;

    iget v8, v0, LH3/D;->a:I

    iget v10, v0, LH3/D;->d:I

    const-string v12, "processName"

    invoke-static {v3, v12}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x8

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_12

    const/4 v10, 0x0

    :cond_12
    new-instance v12, LH3/Z;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    iput-object v3, v12, LH3/Z;->a:Ljava/lang/String;

    iput v8, v12, LH3/Z;->b:I

    iget-byte v3, v12, LH3/Z;->e:B

    or-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    iput v10, v12, LH3/Z;->c:I

    const/16 v19, 0x2

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    const/4 v8, 0x0

    iput-boolean v8, v12, LH3/Z;->d:Z

    or-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    iput-byte v3, v12, LH3/Z;->e:B

    invoke-virtual {v12}, LH3/Z;->a()LH3/a0;

    move-result-object v3

    move/from16 v8, v18

    int-to-byte v10, v8

    invoke-static {}, LE3/r;->e()LH3/V;

    move-result-object v26

    invoke-virtual {v7}, LE3/r;->a()Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_16

    new-instance v22, LH3/S;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v25, v0

    invoke-direct/range {v22 .. v27}, LH3/S;-><init>(Ljava/util/List;LH3/U;LH3/q0;LH3/V;Ljava/util/List;)V

    if-ne v10, v8, :cond_14

    move-object/from16 v23, v22

    new-instance v22, LH3/Q;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v28, 0x0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    invoke-direct/range {v22 .. v29}, LH3/Q;-><init>(LH3/S;Ljava/util/List;Ljava/util/List;Ljava/lang/Boolean;LH3/D0;Ljava/util/List;I)V

    move-object/from16 v2, v22

    move/from16 v0, v29

    iput-object v2, v11, LH3/O;->c:LH3/E0;

    invoke-virtual {v7, v0}, LE3/r;->b(I)LH3/c0;

    move-result-object v0

    iput-object v0, v11, LH3/O;->d:LH3/F0;

    invoke-virtual {v11}, LH3/O;->a()LH3/P;

    move-result-object v0

    const-string v2, "Persisting anr for session "

    invoke-static {v2, v6}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v10, 0x0

    invoke-static {v4, v2, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {v0, v13, v9, v2}, LD5/g;->j(LH3/P;LG3/e;LK3/c;Ljava/util/Map;)LH3/P;

    move-result-object v0

    invoke-static {v0, v9}, LD5/g;->k(LH3/P;LK3/c;)LH3/K0;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v5, v0, v6, v8}, LK3/a;->d(LH3/K0;Ljava/lang/String;Z)V

    :goto_d
    const/4 v5, 0x2

    goto :goto_f

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v10, :cond_15

    const-string v2, " uiOrientation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Missing required properties:"

    invoke-static {v3, v0}, LB/f;->p(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null binaries"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null processName"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null processName"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_e
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_19
    move-object/from16 v30, v3

    move v8, v10

    const/16 v16, 0x4

    const/16 v17, 0x8

    const-string v0, "No ApplicationExitInfo available. Session: "

    invoke-static {v0, v6}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "FirebaseCrashlytics"

    const/4 v10, 0x0

    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_1a
    :goto_f
    const/4 v10, 0x0

    goto :goto_10

    :cond_1b
    move-object/from16 v30, v3

    move v8, v10

    const/16 v16, 0x4

    const/16 v17, 0x8

    move-object v10, v5

    move v5, v4

    const-string v2, "ANR feature enabled, but device is API "

    invoke-static {v0, v2}, Lcom/google/android/material/datepicker/e;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    :cond_1c
    move-object/from16 v30, v3

    move v8, v10

    const/16 v16, 0x4

    const/16 v17, 0x8

    const-string v0, "ANR feature disabled."

    const-string v2, "FirebaseCrashlytics"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1d

    const-string v2, "FirebaseCrashlytics"

    const/4 v10, 0x0

    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1d
    :goto_10
    if-eqz p3, :cond_1f

    iget-object v0, v1, LE3/n;->j:LB3/b;

    invoke-virtual {v0, v6}, LB3/b;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "Finalizing native report for session "

    invoke-static {v0, v6}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1e

    const/4 v10, 0x0

    invoke-static {v2, v0, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11

    :cond_1e
    const/4 v10, 0x0

    :goto_11
    iget-object v0, v1, LE3/n;->j:LB3/b;

    invoke-virtual {v0, v6}, LB3/b;->a(Ljava/lang/String;)LB3/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No minidump data found for session "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "No Tombstones data found for session "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "No native core present"

    invoke-static {v2, v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_1f
    const/4 v10, 0x0

    :goto_12
    if-eqz p1, :cond_20

    move-object/from16 v2, v30

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v21

    goto :goto_13

    :cond_20
    const/4 v5, 0x0

    iget-object v0, v1, LE3/n;->l:LE3/j;

    invoke-virtual {v0, v10}, LE3/j;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_13
    iget-object v2, v1, LE3/n;->m:LD5/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v6, 0x3e8

    div-long/2addr v3, v6

    iget-object v2, v2, LD5/g;->b:Ljava/lang/Object;

    check-cast v2, LK3/a;

    const-string v6, "FirebaseCrashlytics"

    iget-object v7, v2, LK3/a;->b:LK3/c;

    const-string v9, ".com.google.firebase.crashlytics"

    invoke-virtual {v7, v9}, LK3/c;->a(Ljava/lang/String;)V

    const-string v9, ".com.google.firebase.crashlytics-ndk"

    invoke-virtual {v7, v9}, LK3/c;->a(Ljava/lang/String;)V

    iget-object v9, v7, LK3/c;->b:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_21

    const-string v9, ".com.google.firebase.crashlytics.files.v1"

    invoke-virtual {v7, v9}, LK3/c;->a(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, ".com.google.firebase.crashlytics.files.v2"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v10, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, LK3/c;->q:Ljava/lang/Object;

    check-cast v10, Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_21

    new-instance v11, LK3/b;

    invoke-direct {v11, v9}, LK3/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_21

    array-length v10, v9

    move v11, v5

    :goto_14
    if-ge v11, v10, :cond_21

    aget-object v12, v9, v11

    invoke-virtual {v7, v12}, LK3/c;->a(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_21
    invoke-virtual {v2}, LK3/a;->c()Ljava/util/NavigableSet;

    move-result-object v9

    if-eqz v0, :cond_22

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_22
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    move/from16 v10, v17

    if-gt v0, v10, :cond_23

    goto :goto_16

    :cond_23
    :goto_15
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v10, :cond_25

    invoke-interface {v9}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v11, "Removing session over cap: "

    invoke-static {v11, v0}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v13

    if-eqz v13, :cond_24

    const/4 v12, 0x0

    invoke-static {v6, v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_24
    new-instance v11, Ljava/io/File;

    iget-object v12, v7, LK3/c;->s:Ljava/lang/Object;

    check-cast v12, Ljava/io/File;

    invoke-direct {v11, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v11}, LK3/c;->d(Ljava/io/File;)Z

    invoke-interface {v9, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    :goto_16
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_17
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "Finalizing report for session "

    invoke-static {v0, v10}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_26

    const/4 v12, 0x0

    invoke-static {v6, v0, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    sget-object v11, LK3/a;->g:LI3/a;

    sget-object v0, LK3/a;->i:LE3/h;

    new-instance v12, Ljava/io/File;

    iget-object v13, v7, LK3/c;->s:Ljava/lang/Object;

    check-cast v13, Ljava/io/File;

    invoke-direct {v12, v13, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v12, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_28

    const-string v0, "Session "

    const-string v11, " has no events."

    invoke-static {v0, v10, v11}, LB/f;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x2

    invoke-static {v6, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_27

    const/4 v12, 0x0

    invoke-static {v6, v0, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_27
    const/4 v12, 0x3

    const/4 v15, 0x0

    :goto_18
    const/16 v19, 0x2

    goto/16 :goto_28

    :cond_28
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v5

    :goto_19
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ljava/io/File;

    :try_start_7
    invoke-static {v15}, LK3/a;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :try_start_8
    new-instance v5, Landroid/util/JsonReader;

    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v8}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :try_start_9
    invoke-static {v5}, LI3/a;->e(Landroid/util/JsonReader;)LH3/P;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :try_start_b
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v14, :cond_2a

    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "event"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    if-eqz v0, :cond_29

    goto :goto_1a

    :cond_29
    const/4 v5, 0x0

    goto :goto_1b

    :catch_3
    move-exception v0

    goto :goto_1e

    :cond_2a
    :goto_1a
    const/4 v5, 0x1

    :goto_1b
    move v14, v5

    goto :goto_1f

    :catch_4
    move-exception v0

    goto :goto_1d

    :catchall_3
    move-exception v0

    move-object v8, v0

    :try_start_c
    invoke-virtual {v5}, Landroid/util/JsonReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_1c

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {v8, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw v8
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    :goto_1d
    :try_start_e
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    :goto_1e
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Could not add event to report for "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    const/4 v5, 0x0

    const/4 v8, 0x1

    goto :goto_19

    :cond_2b
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Could not parse event files for session "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v6, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v15, v12

    const/4 v12, 0x3

    goto/16 :goto_18

    :cond_2c
    new-instance v0, LG3/g;

    invoke-direct {v0, v7}, LG3/g;-><init>(LK3/c;)V

    invoke-virtual {v0, v10}, LG3/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, LK3/a;->d:LE3/j;

    iget-object v5, v5, LE3/j;->b:LE3/i;

    monitor-enter v5

    :try_start_f
    iget-object v8, v5, LE3/i;->b:Ljava/lang/String;

    invoke-static {v8, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2d

    iget-object v8, v5, LE3/i;->c:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    monitor-exit v5

    goto :goto_21

    :catchall_5
    move-exception v0

    goto/16 :goto_29

    :cond_2d
    :try_start_10
    iget-object v8, v5, LE3/i;->a:LK3/c;

    sget-object v13, LE3/i;->d:LE3/h;

    new-instance v15, Ljava/io/File;

    iget-object v8, v8, LK3/c;->s:Ljava/lang/Object;

    check-cast v8, Ljava/io/File;

    invoke-direct {v15, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v15, v13}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2e

    const-string v8, "Unable to read App Quality Sessions session id."

    const-string v13, "FirebaseCrashlytics"

    const/4 v15, 0x0

    invoke-static {v13, v8, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    goto :goto_20

    :cond_2e
    sget-object v13, LE3/i;->e:LD0/c;

    invoke-static {v8, v13}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    move/from16 v13, v16

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    :goto_20
    monitor-exit v5

    :goto_21
    const-string v5, "report"

    invoke-virtual {v7, v10, v5}, LK3/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    const-string v13, "appQualitySessionId: "

    :try_start_11
    invoke-static {v5}, LK3/a;->e(Ljava/io/File;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v15}, LI3/a;->i(Ljava/lang/String;)LH3/B;

    move-result-object v11

    invoke-virtual {v11}, LH3/B;->a()LH3/A;

    move-result-object v15

    iget-object v11, v11, LH3/B;->k:LH3/N0;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    if-eqz v11, :cond_30

    :try_start_12
    invoke-virtual {v11}, LH3/N0;->a()LH3/I;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v11, LH3/I;->e:Ljava/lang/Long;

    iput-boolean v14, v11, LH3/I;->f:Z

    iget-byte v1, v11, LH3/I;->m:B
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    const/16 v19, 0x2

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    :try_start_13
    iput-byte v1, v11, LH3/I;->m:B

    if-eqz v0, :cond_2f

    new-instance v1, LH3/k0;

    invoke-direct {v1, v0}, LH3/k0;-><init>(Ljava/lang/String;)V

    iput-object v1, v11, LH3/I;->h:LH3/M0;

    :cond_2f
    invoke-virtual {v11}, LH3/I;->a()LH3/J;

    move-result-object v0

    iput-object v0, v15, LH3/A;->j:LH3/N0;

    goto :goto_22

    :catch_5
    move-exception v0

    const/16 v19, 0x2

    goto/16 :goto_25

    :cond_30
    const/16 v19, 0x2

    :goto_22
    invoke-virtual {v15}, LH3/A;->a()LH3/B;

    move-result-object v0

    invoke-virtual {v0}, LH3/B;->a()LH3/A;

    move-result-object v1

    iput-object v8, v1, LH3/A;->g:Ljava/lang/String;

    iget-object v0, v0, LH3/B;->k:LH3/N0;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, LH3/N0;->a()LH3/I;

    move-result-object v0

    iput-object v8, v0, LH3/I;->c:Ljava/lang/String;

    invoke-virtual {v0}, LH3/I;->a()LH3/J;

    move-result-object v0

    iput-object v0, v1, LH3/A;->j:LH3/N0;

    :cond_31
    invoke-virtual {v1}, LH3/A;->a()LH3/B;

    move-result-object v0

    iget-object v1, v0, LH3/B;->k:LH3/N0;

    if-eqz v1, :cond_35

    invoke-virtual {v0}, LH3/B;->a()LH3/A;

    move-result-object v0

    invoke-virtual {v1}, LH3/N0;->a()LH3/I;

    move-result-object v1

    iput-object v12, v1, LH3/I;->k:Ljava/util/List;

    invoke-virtual {v1}, LH3/I;->a()LH3/J;

    move-result-object v1

    iput-object v1, v0, LH3/A;->j:LH3/N0;

    invoke-virtual {v0}, LH3/A;->a()LH3/B;

    move-result-object v0

    iget-object v1, v0, LH3/B;->k:LH3/N0;

    if-nez v1, :cond_32

    const/4 v12, 0x3

    const/4 v15, 0x0

    goto :goto_28

    :cond_32
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    const/4 v12, 0x3

    :try_start_14
    invoke-static {v6, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    if-eqz v11, :cond_33

    const/4 v15, 0x0

    :try_start_15
    invoke-static {v6, v8, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23

    :cond_33
    const/4 v15, 0x0

    :goto_23
    if-eqz v14, :cond_34

    check-cast v1, LH3/J;

    iget-object v1, v1, LH3/J;->b:Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    iget-object v11, v7, LK3/c;->u:Ljava/lang/Object;

    check-cast v11, Ljava/io/File;

    invoke-direct {v8, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_24

    :cond_34
    check-cast v1, LH3/J;

    iget-object v1, v1, LH3/J;->b:Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    iget-object v11, v7, LK3/c;->t:Ljava/lang/Object;

    check-cast v11, Ljava/io/File;

    invoke-direct {v8, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_24
    sget-object v1, LI3/a;->a:LL2/o;

    invoke-virtual {v1, v0}, LL2/o;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, LK3/a;->f(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_28

    :catch_6
    move-exception v0

    goto :goto_27

    :catch_7
    move-exception v0

    goto :goto_26

    :catch_8
    move-exception v0

    :goto_25
    const/4 v12, 0x3

    :goto_26
    const/4 v15, 0x0

    goto :goto_27

    :cond_35
    const/4 v12, 0x3

    const/4 v15, 0x0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reports without sessions cannot have events added to them."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6

    :catch_9
    move-exception v0

    const/4 v12, 0x3

    const/4 v15, 0x0

    const/16 v19, 0x2

    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v8, "Could not synthesize final report file for "

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_28
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, LK3/c;->s:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, LK3/c;->d(Ljava/io/File;)Z

    move-object/from16 v1, p0

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/16 v16, 0x4

    goto/16 :goto_17

    :goto_29
    :try_start_16
    monitor-exit v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    throw v0

    :cond_36
    iget-object v0, v2, LK3/a;->c:LM3/c;

    invoke-virtual {v0}, LM3/c;->b()LM3/b;

    move-result-object v0

    iget-object v0, v0, LM3/b;->a:LE2/j;

    invoke-virtual {v2}, LK3/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v13, 0x4

    if-gt v1, v13, :cond_37

    goto :goto_2b

    :cond_37
    invoke-virtual {v0, v13, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :cond_38
    :goto_2b
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    div-long v10, v2, v8

    const-string v0, "Opening a new session with ID "

    invoke-static {v0, v4}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FirebaseCrashlytics"

    const/4 v12, 0x3

    invoke-static {v2, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    const-string v2, "FirebaseCrashlytics"

    invoke-static {v2, v0, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, v1, LE3/n;->f:LE3/w;

    iget-object v3, v1, LE3/n;->h:LE3/a;

    iget-object v15, v2, LE3/w;->c:Ljava/lang/String;

    iget-object v5, v3, LE3/a;->f:Ljava/lang/String;

    iget-object v6, v3, LE3/a;->g:Ljava/lang/String;

    invoke-virtual {v2}, LE3/w;->c()LE3/c;

    move-result-object v2

    iget-object v2, v2, LE3/c;->a:Ljava/lang/String;

    iget-object v7, v3, LE3/a;->d:Ljava/lang/String;

    const/16 v21, 0x1

    const/4 v14, 0x4

    if-eqz v7, :cond_1

    move v7, v14

    goto :goto_0

    :cond_1
    move/from16 v7, v21

    :goto_0
    invoke-static {v7}, LB/f;->d(I)I

    move-result v19

    iget-object v3, v3, LE3/a;->h:LA/j;

    move v7, v14

    new-instance v14, LH3/m0;

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    invoke-direct/range {v14 .. v20}, LH3/m0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILA/j;)V

    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v2, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-static {}, LE3/g;->g()Z

    move-result v3

    new-instance v5, LH3/o0;

    invoke-direct {v5, v3}, LH3/o0;-><init>(Z)V

    iget-object v3, v1, LE3/n;->a:Landroid/content/Context;

    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    move-wide/from16 v18, v8

    int-to-long v8, v7

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v27, v8, v6

    sget-object v6, LE3/f;->b:LE3/f;

    const-string v7, "FirebaseCrashlytics"

    sget-object v8, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    const/4 v12, 0x2

    if-eqz v9, :cond_2

    const-string v9, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-static {v7, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-static {v7, v9, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v8, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, LE3/f;->q:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LE3/f;

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v6, v7

    :cond_4
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v23

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v24

    invoke-static {v3}, LE3/g;->a(Landroid/content/Context;)J

    move-result-wide v25

    invoke-static {}, LE3/g;->f()Z

    move-result v29

    invoke-static {}, LE3/g;->c()I

    move-result v30

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    new-instance v22, LH3/n0;

    invoke-direct/range {v22 .. v30}, LH3/n0;-><init>(IIJJZI)V

    move/from16 v20, v12

    move-object/from16 v7, v22

    iget-object v12, v1, LE3/n;->j:LB3/b;

    new-instance v13, LH3/l0;

    invoke-direct {v13, v14, v5, v7}, LH3/l0;-><init>(LH3/m0;LH3/o0;LH3/n0;)V

    invoke-virtual {v12, v4, v10, v11, v13}, LB3/b;->d(Ljava/lang/String;JLH3/l0;)V

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    move-object v5, v3

    iget-object v3, v1, LE3/n;->d:LK3/c;

    iget-object v7, v3, LK3/c;->b:Ljava/lang/Object;

    move-object v12, v7

    check-cast v12, Ljava/lang/String;

    monitor-enter v12

    :try_start_0
    iput-object v4, v3, LK3/c;->b:Ljava/lang/Object;

    iget-object v7, v3, LK3/c;->s:Ljava/lang/Object;

    check-cast v7, LE1/d;

    iget-object v7, v7, LE1/d;->b:Ljava/lang/Object;

    check-cast v7, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicMarkableReference;->getReference()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, LG3/d;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v13, Ljava/util/HashMap;

    iget-object v14, v7, LG3/d;->a:Ljava/util/HashMap;

    invoke-direct {v13, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v13}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v7

    iget-object v7, v3, LK3/c;->u:Ljava/lang/Object;

    check-cast v7, LA5/r;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v23, v2

    iget-object v2, v7, LA5/r;->a:Ljava/util/ArrayList;

    invoke-direct {v14, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v14}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v7

    iget-object v7, v3, LK3/c;->r:Ljava/lang/Object;

    check-cast v7, LF3/d;

    iget-object v14, v7, LF3/d;->b:LF3/c;

    move-object v7, v6

    move-object v6, v2

    new-instance v2, LG3/n;

    move-object/from16 v24, v7

    const/4 v7, 0x0

    move-object/from16 v31, v5

    move-object/from16 v17, v9

    move-object v5, v13

    move-object/from16 v13, v23

    move-object/from16 v32, v24

    const/4 v9, 0x4

    invoke-direct/range {v2 .. v7}, LG3/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v14, v2}, LF3/c;->a(Ljava/lang/Runnable;)LL2/r;

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0

    :goto_2
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v0

    :cond_5
    move-object v13, v2

    move-object/from16 v31, v3

    move-object/from16 v32, v6

    move-object/from16 v17, v9

    const/4 v9, 0x4

    :goto_3
    iget-object v2, v1, LE3/n;->i:LG3/e;

    iget-object v3, v2, LG3/e;->b:Ljava/lang/Object;

    check-cast v3, LG3/c;

    invoke-interface {v3}, LG3/c;->a()V

    sget-object v3, LG3/e;->c:Lx2/f;

    iput-object v3, v2, LG3/e;->b:Ljava/lang/Object;

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, v2, LG3/e;->a:Ljava/lang/Object;

    check-cast v3, LK3/c;

    const-string v5, "userlog"

    invoke-virtual {v3, v4, v5}, LK3/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    new-instance v5, LG3/l;

    invoke-direct {v5, v3}, LG3/l;-><init>(Ljava/io/File;)V

    iput-object v5, v2, LG3/e;->b:Ljava/lang/Object;

    :goto_4
    iget-object v2, v1, LE3/n;->l:LE3/j;

    invoke-virtual {v2, v4}, LE3/j;->a(Ljava/lang/String;)V

    iget-object v2, v1, LE3/n;->m:LD5/g;

    iget-object v3, v2, LD5/g;->a:Ljava/lang/Object;

    check-cast v3, LE3/r;

    sget-object v5, LH3/O0;->a:Ljava/nio/charset/Charset;

    new-instance v5, LH3/A;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    const-string v6, "19.4.3"

    iput-object v6, v5, LH3/A;->a:Ljava/lang/String;

    iget-object v6, v3, LE3/r;->c:LE3/a;

    iget-object v7, v6, LE3/a;->a:Ljava/lang/String;

    if-eqz v7, :cond_18

    iput-object v7, v5, LH3/A;->b:Ljava/lang/String;

    iget-object v7, v3, LE3/r;->b:LE3/w;

    invoke-virtual {v7}, LE3/w;->c()LE3/c;

    move-result-object v12

    iget-object v12, v12, LE3/c;->a:Ljava/lang/String;

    if-eqz v12, :cond_17

    iput-object v12, v5, LH3/A;->d:Ljava/lang/String;

    invoke-virtual {v7}, LE3/w;->c()LE3/c;

    move-result-object v12

    iget-object v12, v12, LE3/c;->b:Ljava/lang/String;

    iput-object v12, v5, LH3/A;->e:Ljava/lang/String;

    invoke-virtual {v7}, LE3/w;->c()LE3/c;

    move-result-object v12

    iget-object v12, v12, LE3/c;->c:Ljava/lang/String;

    iput-object v12, v5, LH3/A;->f:Ljava/lang/String;

    iget-object v12, v6, LE3/a;->f:Ljava/lang/String;

    if-eqz v12, :cond_16

    iput-object v12, v5, LH3/A;->h:Ljava/lang/String;

    iget-object v14, v6, LE3/a;->g:Ljava/lang/String;

    if-eqz v14, :cond_15

    iput-object v14, v5, LH3/A;->i:Ljava/lang/String;

    iput v9, v5, LH3/A;->c:I

    move/from16 v30, v9

    iget-byte v9, v5, LH3/A;->m:B

    or-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    iput-byte v9, v5, LH3/A;->m:B

    new-instance v9, LH3/I;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v9, LH3/I;->f:Z

    iget-byte v1, v9, LH3/I;->m:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-wide v10, v9, LH3/I;->d:J

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v9, LH3/I;->m:B

    if-eqz v4, :cond_14

    iput-object v4, v9, LH3/I;->b:Ljava/lang/String;

    sget-object v1, LE3/r;->g:Ljava/lang/String;

    if-eqz v1, :cond_13

    iput-object v1, v9, LH3/I;->a:Ljava/lang/String;

    iget-object v1, v7, LE3/w;->c:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v7}, LE3/w;->c()LE3/c;

    move-result-object v4

    iget-object v4, v4, LE3/c;->a:Ljava/lang/String;

    iget-object v6, v6, LE3/a;->h:LA/j;

    iget-object v7, v6, LA/j;->r:Ljava/lang/Object;

    check-cast v7, LB3/c;

    if-nez v7, :cond_7

    new-instance v7, LB3/c;

    invoke-direct {v7, v6}, LB3/c;-><init>(LA/j;)V

    iput-object v7, v6, LA/j;->r:Ljava/lang/Object;

    :cond_7
    iget-object v7, v6, LA/j;->r:Ljava/lang/Object;

    check-cast v7, LB3/c;

    iget-object v10, v7, LB3/c;->b:Ljava/lang/String;

    if-nez v7, :cond_8

    new-instance v7, LB3/c;

    invoke-direct {v7, v6}, LB3/c;-><init>(LA/j;)V

    iput-object v7, v6, LA/j;->r:Ljava/lang/Object;

    :cond_8
    iget-object v6, v6, LA/j;->r:Ljava/lang/Object;

    check-cast v6, LB3/c;

    iget-object v6, v6, LB3/c;->c:Ljava/lang/String;

    new-instance v23, LH3/K;

    move-object/from16 v24, v1

    move-object/from16 v27, v4

    move-object/from16 v29, v6

    move-object/from16 v28, v10

    move-object/from16 v25, v12

    move-object/from16 v26, v14

    invoke-direct/range {v23 .. v29}, LH3/K;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v23

    iput-object v1, v9, LH3/I;->g:LH3/v0;

    new-instance v1, LH3/i0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x3

    iput v4, v1, LH3/i0;->a:I

    iget-byte v4, v1, LH3/i0;->e:B

    or-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    iput-byte v4, v1, LH3/i0;->e:B

    if-eqz v15, :cond_11

    iput-object v15, v1, LH3/i0;->b:Ljava/lang/String;

    if-eqz v13, :cond_10

    iput-object v13, v1, LH3/i0;->c:Ljava/lang/String;

    invoke-static {}, LE3/g;->g()Z

    move-result v4

    iput-boolean v4, v1, LH3/i0;->d:Z

    iget-byte v4, v1, LH3/i0;->e:B

    or-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    iput-byte v4, v1, LH3/i0;->e:B

    invoke-virtual {v1}, LH3/i0;->a()LH3/j0;

    move-result-object v1

    iput-object v1, v9, LH3/I;->i:LH3/L0;

    new-instance v1, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v6, 0x7

    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    sget-object v4, LE3/r;->f:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    iget-object v3, v3, LE3/r;->a:Landroid/content/Context;

    invoke-static {v3}, LE3/g;->a(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v10, v1

    mul-long/2addr v7, v10

    invoke-static {}, LE3/g;->f()Z

    move-result v1

    invoke-static {}, LE3/g;->c()I

    move-result v10

    new-instance v11, LH3/M;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    iput v6, v11, LH3/M;->a:I

    iget-byte v6, v11, LH3/M;->j:B

    or-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    iput-byte v6, v11, LH3/M;->j:B

    if-eqz v17, :cond_f

    move-object/from16 v12, v17

    iput-object v12, v11, LH3/M;->b:Ljava/lang/String;

    iput v0, v11, LH3/M;->c:I

    or-int/lit8 v0, v6, 0x2

    int-to-byte v0, v0

    iput-wide v3, v11, LH3/M;->d:J

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-wide v7, v11, LH3/M;->e:J

    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    iput-boolean v1, v11, LH3/M;->f:Z

    or-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    iput v10, v11, LH3/M;->g:I

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    iput-byte v0, v11, LH3/M;->j:B

    move-object/from16 v0, v31

    if-eqz v0, :cond_e

    iput-object v0, v11, LH3/M;->h:Ljava/lang/String;

    move-object/from16 v7, v32

    if-eqz v7, :cond_d

    iput-object v7, v11, LH3/M;->i:Ljava/lang/String;

    invoke-virtual {v11}, LH3/M;->a()LH3/N;

    move-result-object v0

    iput-object v0, v9, LH3/I;->j:LH3/w0;

    const/4 v4, 0x3

    iput v4, v9, LH3/I;->l:I

    iget-byte v0, v9, LH3/I;->m:B

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, v9, LH3/I;->m:B

    invoke-virtual {v9}, LH3/I;->a()LH3/J;

    move-result-object v0

    iput-object v0, v5, LH3/A;->j:LH3/N0;

    invoke-virtual {v5}, LH3/A;->a()LH3/B;

    move-result-object v0

    iget-object v1, v2, LD5/g;->b:Ljava/lang/Object;

    check-cast v1, LK3/a;

    iget-object v1, v1, LK3/a;->b:LK3/c;

    const-string v2, "FirebaseCrashlytics"

    iget-object v3, v0, LH3/B;->k:LH3/N0;

    if-nez v3, :cond_b

    const-string v0, "Could not get session for report"

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    invoke-static {v2, v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_b
    move-object v4, v3

    check-cast v4, LH3/J;

    iget-object v4, v4, LH3/J;->b:Ljava/lang/String;

    :try_start_9
    sget-object v5, LK3/a;->g:LI3/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, LI3/a;->a:LL2/o;

    invoke-virtual {v5, v0}, LL2/o;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "report"

    invoke-virtual {v1, v4, v5}, LK3/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5, v0}, LK3/a;->f(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "start-time"

    invoke-virtual {v1, v4, v0}, LK3/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, ""

    check-cast v3, LH3/J;

    iget-wide v5, v3, LH3/J;->d:J

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v8, LK3/a;->e:Ljava/nio/charset/Charset;

    invoke-direct {v3, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    invoke-virtual {v3, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    mul-long v5, v5, v18

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setLastModified(J)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    return-void

    :catchall_3
    move-exception v0

    move-object v1, v0

    :try_start_c
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    :try_start_d
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Could not persist report for session "

    invoke-static {v1, v4}, Lcom/google/android/material/datepicker/e;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v2, v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null modelClass"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null manufacturer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null model"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null buildVersion"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null version"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null identifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null generator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null identifier"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null displayVersion"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null buildVersion"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null installationUuid"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null gmpAppId"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(LM3/c;)Z
    .locals 5

    invoke-static {}, LF3/d;->a()V

    iget-object v0, p0, LE3/n;->n:LE3/s;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "FirebaseCrashlytics"

    if-eqz v0, :cond_0

    iget-object v0, v0, LE3/s;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Skipping session finalization because a crash has already occurred."

    invoke-static {v3, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :cond_0
    const/4 v0, 0x2

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Finalizing previously open sessions."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4, p1, v4}, LE3/n;->b(ZLM3/c;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Closed all previously open sessions."

    invoke-static {v3, p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v4

    :catch_0
    move-exception p1

    const-string v0, "Unable to finalize previously open sessions."

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public final e()Ljava/lang/String;
    .locals 6

    const-string v0, "com.google.firebase.crashlytics.version_control_info"

    const-string v1, "string"

    iget-object v2, p0, LE3/n;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, LE3/g;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x3

    const/4 v3, 0x0

    const-string v4, "FirebaseCrashlytics"

    if-eqz v0, :cond_2

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Read version control info from string resource"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-object v1, LE3/n;->s:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-class v0, LE3/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "Couldn\'t get Class Loader"

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string v5, "META-INF/version-control-info.textproto"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    :try_start_0
    const-string v5, "Read version control info from file"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v2, v2, [B

    :goto_2
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_7
    const-string v0, "No version control information found"

    invoke-static {v4, v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public final f()V
    .locals 5

    const-string v0, "FirebaseCrashlytics"

    :try_start_0
    invoke-virtual {p0}, LE3/n;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "com.crashlytics.version-control-info"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    :try_start_1
    iget-object v4, p0, LE3/n;->d:LK3/c;

    iget-object v4, v4, LK3/c;->t:Ljava/lang/Object;

    check-cast v4, LE1/d;

    invoke-virtual {v4, v2, v1}, LE1/d;->d(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, LE3/n;->a:Landroid/content/Context;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    throw v1

    :cond_2
    :goto_1
    const-string v1, "Attempting to set custom attribute with null key, ignoring."

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    const-string v1, "Saved version control info"

    invoke-static {v0, v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    const-string v2, "Unable to save version control info"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_3
    return-void
.end method

.method public final g(LL2/r;)V
    .locals 6

    iget-object v0, p0, LE3/n;->o:LL2/i;

    const-string v1, "FirebaseCrashlytics"

    iget-object v2, p0, LE3/n;->m:LD5/g;

    iget-object v2, v2, LD5/g;->b:Ljava/lang/Object;

    check-cast v2, LK3/a;

    iget-object v2, v2, LK3/a;->b:LK3/c;

    iget-object v3, v2, LK3/c;->t:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v2, LK3/c;->u:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, LK3/c;->v:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, LK3/c;->e([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "No crash reports are available to be sent."

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, p1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, LL2/i;->b(Ljava/lang/Object;)V

    return-void

    :cond_2
    :goto_0
    sget-object v2, LB3/d;->a:LB3/d;

    const-string v3, "Crash reports are available to be sent."

    invoke-virtual {v2, v3}, LB3/d;->e(Ljava/lang/String;)V

    iget-object v3, p0, LE3/n;->b:LE1/E;

    invoke-virtual {v3}, LE1/E;->a()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v2, "Automatic data collection is enabled. Allowing upload."

    const/4 v3, 0x3

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1, v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LL2/i;->b(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, LE5/l;->t(Ljava/lang/Object;)LL2/r;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v1, "Automatic data collection is disabled."

    invoke-virtual {v2, v1}, LB3/d;->b(Ljava/lang/String;)V

    const-string v1, "Notifying that unsent reports are available."

    invoke-virtual {v2, v1}, LB3/d;->e(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, LL2/i;->b(Ljava/lang/Object;)V

    iget-object v0, v3, LE1/E;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, v3, LE1/E;->d:Ljava/lang/Object;

    check-cast v1, LL2/i;

    iget-object v1, v1, LL2/i;->a:LL2/r;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lh3/e;

    const/4 v3, 0x4

    invoke-direct {v0, v3}, Lh3/e;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, LL2/j;->a:LL2/q;

    new-instance v4, LL2/r;

    invoke-direct {v4}, LL2/r;-><init>()V

    new-instance v5, LL2/m;

    invoke-direct {v5, v3, v0, v4}, LL2/m;-><init>(Ljava/util/concurrent/Executor;LL2/h;LL2/r;)V

    iget-object v0, v1, LL2/r;->b:Lcom/bumptech/glide/manager/r;

    invoke-virtual {v0, v5}, Lcom/bumptech/glide/manager/r;->k(LL2/n;)V

    invoke-virtual {v1}, LL2/r;->n()V

    const-string v0, "Waiting for send/deleteUnsentReports to be called."

    invoke-virtual {v2, v0}, LB3/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, LE3/n;->p:LL2/i;

    iget-object v0, v0, LL2/i;->a:LL2/r;

    invoke-static {v4, v0}, LF3/b;->a(LL2/r;LL2/r;)LL2/r;

    move-result-object v0

    :goto_1
    iget-object v1, p0, LE3/n;->e:LF3/d;

    iget-object v1, v1, LF3/d;->a:LF3/c;

    new-instance v2, LA/j;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v3, v4}, LA/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v0, v1, v2}, LL2/r;->h(Ljava/util/concurrent/Executor;LL2/h;)LL2/r;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
