.class public final Lw5/G;
.super Ljava/lang/Object;


# instance fields
.field public a:Lw5/B;

.field public b:Lw5/z;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lw5/n;

.field public f:Lw5/o;

.field public g:Lw5/K;

.field public h:Lw5/H;

.field public i:Lw5/H;

.field public j:Lw5/H;

.field public k:J

.field public l:J

.field public m:LA5/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lw5/G;->c:I

    new-instance v0, Lw5/o;

    invoke-direct {v0}, Lw5/o;-><init>()V

    iput-object v0, p0, Lw5/G;->f:Lw5/o;

    return-void
.end method

.method public static b(Ljava/lang/String;Lw5/H;)V
    .locals 1

    if-eqz p1, :cond_4

    iget-object v0, p1, Lw5/H;->v:Lw5/K;

    if-nez v0, :cond_3

    iget-object v0, p1, Lw5/H;->w:Lw5/H;

    if-nez v0, :cond_2

    iget-object v0, p1, Lw5/H;->x:Lw5/H;

    if-nez v0, :cond_1

    iget-object p1, p1, Lw5/H;->y:Lw5/H;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ".priorResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p1, ".cacheResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, ".networkResponse != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p1, ".body != null"

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lw5/H;
    .locals 17

    move-object/from16 v0, p0

    iget v5, v0, Lw5/G;->c:I

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    iget-object v2, v0, Lw5/G;->a:Lw5/B;

    if-eqz v2, :cond_3

    iget-object v3, v0, Lw5/G;->b:Lw5/z;

    if-eqz v3, :cond_2

    iget-object v4, v0, Lw5/G;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v6, v0, Lw5/G;->e:Lw5/n;

    iget-object v1, v0, Lw5/G;->f:Lw5/o;

    invoke-virtual {v1}, Lw5/o;->c()Lw5/p;

    move-result-object v7

    iget-object v8, v0, Lw5/G;->g:Lw5/K;

    iget-object v9, v0, Lw5/G;->h:Lw5/H;

    iget-object v10, v0, Lw5/G;->i:Lw5/H;

    iget-object v11, v0, Lw5/G;->j:Lw5/H;

    iget-wide v12, v0, Lw5/G;->k:J

    iget-wide v14, v0, Lw5/G;->l:J

    iget-object v1, v0, Lw5/G;->m:LA5/e;

    move-object/from16 v16, v1

    new-instance v1, Lw5/H;

    invoke-direct/range {v1 .. v16}, Lw5/H;-><init>(Lw5/B;Lw5/z;Ljava/lang/String;ILw5/n;Lw5/p;Lw5/K;Lw5/H;Lw5/H;Lw5/H;JJLA5/e;)V

    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lw5/G;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
