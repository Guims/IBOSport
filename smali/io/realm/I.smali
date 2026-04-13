.class public final Lio/realm/I;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/io/File;

.field public b:Ljava/lang/String;

.field public c:J

.field public d:Z

.field public final e:I

.field public final f:Ljava/util/HashSet;

.field public final g:Ljava/util/HashSet;

.field public h:LP4/f;

.field public i:Lx2/f;

.field public final j:J

.field public k:Z

.field public final l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lio/realm/d;->v:Landroid/content/Context;

    invoke-direct {p0, v0}, Lio/realm/I;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lio/realm/I;->f:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lio/realm/I;->g:Ljava/util/HashSet;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p0, Lio/realm/I;->j:J

    if-eqz p1, :cond_1

    invoke-static {p1}, Lio/realm/internal/w;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lio/realm/I;->a:Ljava/io/File;

    const-string p1, "default.realm"

    iput-object p1, p0, Lio/realm/I;->b:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lio/realm/I;->c:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lio/realm/I;->d:Z

    const/4 v1, 0x1

    iput v1, p0, Lio/realm/I;->e:I

    sget-object v2, Lio/realm/J;->l:Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-boolean p1, p0, Lio/realm/I;->k:Z

    iput-boolean v1, p0, Lio/realm/I;->l:Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Call `Realm.init(Context)` before creating a RealmConfiguration"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lio/realm/J;
    .locals 14

    iget-object v0, p0, Lio/realm/I;->h:LP4/f;

    if-nez v0, :cond_1

    const-class v1, Lio/realm/internal/Util;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/realm/internal/Util;->a:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "io.reactivex.Flowable"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lio/realm/internal/Util;->a:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lio/realm/internal/Util;->a:Ljava/lang/Boolean;

    :cond_0
    :goto_0
    sget-object v0, Lio/realm/internal/Util;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    if-eqz v0, :cond_1

    new-instance v0, LP4/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LB5/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LB5/c;-><init>(I)V

    new-instance v1, LB5/c;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, LB5/c;-><init>(I)V

    new-instance v1, LB5/c;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, LB5/c;-><init>(I)V

    iput-object v0, p0, Lio/realm/I;->h:LP4/f;

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lio/realm/I;->i:Lx2/f;

    if-nez v0, :cond_3

    const-class v1, Lio/realm/internal/Util;

    monitor-enter v1

    :try_start_4
    sget-object v0, Lio/realm/internal/Util;->b:Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_2

    :try_start_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lio/realm/internal/Util;->b:Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    :try_start_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lio/realm/internal/Util;->b:Ljava/lang/Boolean;

    :cond_2
    :goto_3
    sget-object v0, Lio/realm/internal/Util;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit v1

    if-eqz v0, :cond_3

    new-instance v0, Lx2/f;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lx2/f;-><init>(I)V

    iput-object v0, p0, Lio/realm/I;->i:Lx2/f;

    goto :goto_5

    :goto_4
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_3
    :goto_5
    new-instance v2, Lio/realm/J;

    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lio/realm/I;->a:Ljava/io/File;

    iget-object v1, p0, Lio/realm/I;->b:Ljava/lang/String;

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-wide v4, p0, Lio/realm/I;->c:J

    iget-boolean v6, p0, Lio/realm/I;->d:Z

    iget v7, p0, Lio/realm/I;->e:I

    iget-object v0, p0, Lio/realm/I;->f:Ljava/util/HashSet;

    iget-object v1, p0, Lio/realm/I;->g:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v8

    if-lez v8, :cond_4

    new-instance v0, LN4/a;

    sget-object v8, Lio/realm/J;->m:Lio/realm/internal/z;

    invoke-direct {v0, v8, v1}, LN4/a;-><init>(Lio/realm/internal/z;Ljava/util/HashSet;)V

    :goto_6
    move-object v8, v0

    goto :goto_8

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    const/4 v8, 0x1

    if-ne v1, v8, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/realm/J;->a(Ljava/lang/String;)Lio/realm/internal/z;

    move-result-object v0

    goto :goto_6

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Lio/realm/internal/z;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lio/realm/J;->a(Ljava/lang/String;)Lio/realm/internal/z;

    move-result-object v10

    aput-object v10, v1, v9

    add-int/2addr v9, v8

    goto :goto_7

    :cond_6
    new-instance v0, LN4/a;

    invoke-direct {v0, v1}, LN4/a;-><init>([Lio/realm/internal/z;)V

    goto :goto_6

    :goto_8
    iget-object v9, p0, Lio/realm/I;->h:LP4/f;

    iget-wide v10, p0, Lio/realm/I;->j:J

    iget-boolean v12, p0, Lio/realm/I;->k:Z

    iget-boolean v13, p0, Lio/realm/I;->l:Z

    invoke-direct/range {v2 .. v13}, Lio/realm/J;-><init>(Ljava/io/File;JZILio/realm/internal/z;LP4/f;JZZ)V

    return-object v2
.end method
