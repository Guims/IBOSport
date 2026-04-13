.class public final Lw5/H;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final A:J

.field public final B:LA5/e;

.field public final b:Lw5/B;

.field public final q:Lw5/z;

.field public final r:Ljava/lang/String;

.field public final s:I

.field public final t:Lw5/n;

.field public final u:Lw5/p;

.field public final v:Lw5/K;

.field public final w:Lw5/H;

.field public final x:Lw5/H;

.field public final y:Lw5/H;

.field public final z:J


# direct methods
.method public constructor <init>(Lw5/B;Lw5/z;Ljava/lang/String;ILw5/n;Lw5/p;Lw5/K;Lw5/H;Lw5/H;Lw5/H;JJLA5/e;)V
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocol"

    invoke-static {p2, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Le5/g;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/H;->b:Lw5/B;

    iput-object p2, p0, Lw5/H;->q:Lw5/z;

    iput-object p3, p0, Lw5/H;->r:Ljava/lang/String;

    iput p4, p0, Lw5/H;->s:I

    iput-object p5, p0, Lw5/H;->t:Lw5/n;

    iput-object p6, p0, Lw5/H;->u:Lw5/p;

    iput-object p7, p0, Lw5/H;->v:Lw5/K;

    iput-object p8, p0, Lw5/H;->w:Lw5/H;

    iput-object p9, p0, Lw5/H;->x:Lw5/H;

    iput-object p10, p0, Lw5/H;->y:Lw5/H;

    iput-wide p11, p0, Lw5/H;->z:J

    iput-wide p13, p0, Lw5/H;->A:J

    move-object/from16 p1, p15

    iput-object p1, p0, Lw5/H;->B:LA5/e;

    return-void
.end method

.method public static a(Ljava/lang/String;Lw5/H;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lw5/H;->u:Lw5/p;

    invoke-virtual {p1, p0}, Lw5/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    const/16 v0, 0xc8

    iget v1, p0, Lw5/H;->s:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x12b

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lw5/H;->v:Lw5/K;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw5/K;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Lw5/G;
    .locals 3

    new-instance v0, Lw5/G;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lw5/H;->b:Lw5/B;

    iput-object v1, v0, Lw5/G;->a:Lw5/B;

    iget-object v1, p0, Lw5/H;->q:Lw5/z;

    iput-object v1, v0, Lw5/G;->b:Lw5/z;

    iget v1, p0, Lw5/H;->s:I

    iput v1, v0, Lw5/G;->c:I

    iget-object v1, p0, Lw5/H;->r:Ljava/lang/String;

    iput-object v1, v0, Lw5/G;->d:Ljava/lang/String;

    iget-object v1, p0, Lw5/H;->t:Lw5/n;

    iput-object v1, v0, Lw5/G;->e:Lw5/n;

    iget-object v1, p0, Lw5/H;->u:Lw5/p;

    invoke-virtual {v1}, Lw5/p;->d()Lw5/o;

    move-result-object v1

    iput-object v1, v0, Lw5/G;->f:Lw5/o;

    iget-object v1, p0, Lw5/H;->v:Lw5/K;

    iput-object v1, v0, Lw5/G;->g:Lw5/K;

    iget-object v1, p0, Lw5/H;->w:Lw5/H;

    iput-object v1, v0, Lw5/G;->h:Lw5/H;

    iget-object v1, p0, Lw5/H;->x:Lw5/H;

    iput-object v1, v0, Lw5/G;->i:Lw5/H;

    iget-object v1, p0, Lw5/H;->y:Lw5/H;

    iput-object v1, v0, Lw5/G;->j:Lw5/H;

    iget-wide v1, p0, Lw5/H;->z:J

    iput-wide v1, v0, Lw5/G;->k:J

    iget-wide v1, p0, Lw5/H;->A:J

    iput-wide v1, v0, Lw5/G;->l:J

    iget-object v1, p0, Lw5/H;->B:LA5/e;

    iput-object v1, v0, Lw5/G;->m:LA5/e;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lw5/H;->q:Lw5/z;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lw5/H;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/H;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lw5/H;->b:Lw5/B;

    iget-object v1, v1, Lw5/B;->b:Lw5/r;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
