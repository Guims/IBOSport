.class public final LP1/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# static fields
.field public static final z:[Ljava/lang/String;


# instance fields
.field public final b:Landroid/content/Context;

.field public final q:LO1/r;

.field public final r:LO1/r;

.field public final s:Landroid/net/Uri;

.field public final t:I

.field public final u:I

.field public final v:LI1/j;

.field public final w:Ljava/lang/Class;

.field public volatile x:Z

.field public volatile y:Lcom/bumptech/glide/load/data/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, LP1/c;->z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LO1/r;LO1/r;Landroid/net/Uri;IILI1/j;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LP1/c;->b:Landroid/content/Context;

    iput-object p2, p0, LP1/c;->q:LO1/r;

    iput-object p3, p0, LP1/c;->r:LO1/r;

    iput-object p4, p0, LP1/c;->s:Landroid/net/Uri;

    iput p5, p0, LP1/c;->t:I

    iput p6, p0, LP1/c;->u:I

    iput-object p7, p0, LP1/c;->v:LI1/j;

    iput-object p8, p0, LP1/c;->w:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, LP1/c;->w:Ljava/lang/Class;

    return-object v0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, LP1/c;->y:Lcom/bumptech/glide/load/data/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->b()V

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LP1/c;->x:Z

    iget-object v0, p0, LP1/c;->y:Lcom/bumptech/glide/load/data/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final d()Lcom/bumptech/glide/load/data/e;
    .locals 13

    invoke-static {}, LA2/a;->o()Z

    move-result v0

    const/4 v1, 0x0

    iget-object v2, p0, LP1/c;->b:Landroid/content/Context;

    iget-object v3, p0, LP1/c;->v:LI1/j;

    iget v4, p0, LP1/c;->u:I

    iget v5, p0, LP1/c;->t:I

    if-eqz v0, :cond_3

    iget-object v7, p0, LP1/c;->s:Landroid/net/Uri;

    const-string v0, "Failed to media store entry for: "

    const-string v12, "File path was empty in media store for: "

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, LP1/c;->z:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v0, "_data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, LP1/c;->q:LO1/r;

    invoke-interface {v0, v6, v5, v4, v3}, LO1/r;->b(Ljava/lang/Object;IILI1/j;)LO1/q;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_1
    move-exception v0

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    iget-object v0, p0, LP1/c;->s:Landroid/net/Uri;

    invoke-static {v0}, La/a;->B(Landroid/net/Uri;)Z

    move-result v6

    iget-object v7, p0, LP1/c;->r:LO1/r;

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const-string v8, "picker"

    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7, v0, v5, v4, v3}, LO1/r;->b(Ljava/lang/Object;IILI1/j;)LO1/q;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v6, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-virtual {v2, v6}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v0}, LA2/a;->e(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :cond_5
    invoke-interface {v7, v0, v5, v4, v3}, LO1/r;->b(Ljava/lang/Object;IILI1/j;)LO1/q;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, v0, LO1/q;->c:Lcom/bumptech/glide/load/data/e;

    return-object v0

    :cond_6
    return-object v1
.end method

.method public final e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V
    .locals 2

    const-string v0, "Failed to build fetcher for: "

    :try_start_0
    invoke-virtual {p0}, LP1/c;->d()Lcom/bumptech/glide/load/data/e;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LP1/c;->s:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    iput-object v1, p0, LP1/c;->y:Lcom/bumptech/glide/load/data/e;

    iget-boolean v0, p0, LP1/c;->x:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LP1/c;->cancel()V

    return-void

    :cond_1
    invoke-interface {v1, p1, p2}, Lcom/bumptech/glide/load/data/e;->e(Lcom/bumptech/glide/g;Lcom/bumptech/glide/load/data/d;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_0
    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->d(Ljava/lang/Exception;)V

    return-void
.end method
