.class public final LK3/c;
.super Ljava/lang/Object;

# interfaces
.implements Ll2/b;


# instance fields
.field public b:Ljava/lang/Object;

.field public final q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;

.field public final s:Ljava/lang/Object;

.field public final t:Ljava/lang/Object;

.field public final u:Ljava/lang/Object;

.field public final v:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LR4/a;LR4/a;LR4/a;LJ/l;LR4/a;LR4/a;LR4/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK3/c;->b:Ljava/lang/Object;

    iput-object p2, p0, LK3/c;->q:Ljava/lang/Object;

    iput-object p3, p0, LK3/c;->r:Ljava/lang/Object;

    iput-object p4, p0, LK3/c;->s:Ljava/lang/Object;

    iput-object p5, p0, LK3/c;->t:Ljava/lang/Object;

    iput-object p6, p0, LK3/c;->u:Ljava/lang/Object;

    iput-object p7, p0, LK3/c;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, LB3/d;->b:LB3/d;

    invoke-virtual {v0, p1}, LB3/d;->d(Landroid/content/Context;)LH3/D0;

    move-result-object v0

    check-cast v0, LH3/a0;

    iget-object v0, v0, LH3/a0;->a:Ljava/lang/String;

    iput-object v0, p0, LK3/c;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, LK3/c;->q:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".crashlytics.v3"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_0

    invoke-static {v0}, LE3/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v2, "[^a-zA-Z0-9.]"

    const-string v3, "_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ".com.google.firebase.crashlytics.files.v1"

    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, LK3/c;->c(Ljava/io/File;)V

    iput-object v1, p0, LK3/c;->r:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    const-string v0, "open-sessions"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, LK3/c;->c(Ljava/io/File;)V

    iput-object p1, p0, LK3/c;->s:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    const-string v0, "reports"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, LK3/c;->c(Ljava/io/File;)V

    iput-object p1, p0, LK3/c;->t:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    const-string v0, "priority-reports"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, LK3/c;->c(Ljava/io/File;)V

    iput-object p1, p0, LK3/c;->u:Ljava/lang/Object;

    new-instance p1, Ljava/io/File;

    const-string v0, "native-reports"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, LK3/c;->c(Ljava/io/File;)V

    iput-object p1, p0, LK3/c;->v:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;LK3/c;LF3/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LE1/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LE1/d;-><init>(LK3/c;Z)V

    iput-object v0, p0, LK3/c;->s:Ljava/lang/Object;

    new-instance v0, LE1/d;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, LE1/d;-><init>(LK3/c;Z)V

    iput-object v0, p0, LK3/c;->t:Ljava/lang/Object;

    new-instance v0, LA5/r;

    invoke-direct {v0}, LA5/r;-><init>()V

    iput-object v0, p0, LK3/c;->u:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicMarkableReference;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicMarkableReference;-><init>(Ljava/lang/Object;Z)V

    iput-object v0, p0, LK3/c;->v:Ljava/lang/Object;

    iput-object p1, p0, LK3/c;->b:Ljava/lang/Object;

    new-instance p1, LG3/g;

    invoke-direct {p1, p2}, LG3/g;-><init>(LK3/c;)V

    iput-object p1, p0, LK3/c;->q:Ljava/lang/Object;

    iput-object p3, p0, LK3/c;->r:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized c(Ljava/io/File;)V
    .locals 6

    const-string v0, "Could not create Crashlytics-specific directory: "

    const-string v1, "Unexpected non-directory file: "

    const-class v2, LK3/c;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; deleting file and creating new directory."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "FirebaseCrashlytics"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "FirebaseCrashlytics"

    invoke-static {v3, v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FirebaseCrashlytics"

    invoke-static {v0, p0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v2

    return-void

    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static d(Ljava/io/File;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, LK3/c;->d(Ljava/io/File;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method

.method public static e([Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, LK3/c;->q:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v0}, LK3/c;->d(Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Deleted previous Crashlytics file system: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    const-string v1, "FirebaseCrashlytics"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, LK3/c;->s:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public get()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, LK3/c;->b:Ljava/lang/Object;

    check-cast v0, LR4/a;

    invoke-interface {v0}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LK3/c;->q:Ljava/lang/Object;

    check-cast v1, LR4/a;

    invoke-interface {v1}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lk2/d;

    iget-object v2, p0, LK3/c;->r:Ljava/lang/Object;

    check-cast v2, LR4/a;

    invoke-interface {v2}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lq2/d;

    iget-object v3, p0, LK3/c;->s:Ljava/lang/Object;

    check-cast v3, LJ/l;

    invoke-virtual {v3}, LJ/l;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LJ/l;

    iget-object v4, p0, LK3/c;->t:Ljava/lang/Object;

    check-cast v4, LR4/a;

    invoke-interface {v4}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    iget-object v5, p0, LK3/c;->u:Ljava/lang/Object;

    check-cast v5, LR4/a;

    invoke-interface {v5}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr2/c;

    new-instance v6, Lh3/e;

    const/16 v7, 0x1d

    invoke-direct {v6, v7}, Lh3/e;-><init>(I)V

    new-instance v7, LW3/e;

    const/16 v8, 0x1d

    invoke-direct {v7, v8}, LW3/e;-><init>(I)V

    iget-object v8, p0, LK3/c;->v:Ljava/lang/Object;

    check-cast v8, LR4/a;

    invoke-interface {v8}, LR4/a;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lq2/c;

    new-instance v9, LM3/c;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, LM3/c;->a:Ljava/lang/Object;

    iput-object v1, v9, LM3/c;->b:Ljava/lang/Object;

    iput-object v2, v9, LM3/c;->c:Ljava/lang/Object;

    iput-object v3, v9, LM3/c;->d:Ljava/lang/Object;

    iput-object v4, v9, LM3/c;->e:Ljava/lang/Object;

    iput-object v5, v9, LM3/c;->f:Ljava/lang/Object;

    iput-object v6, v9, LM3/c;->g:Ljava/lang/Object;

    iput-object v7, v9, LM3/c;->h:Ljava/lang/Object;

    iput-object v8, v9, LM3/c;->i:Ljava/lang/Object;

    return-object v9
.end method
