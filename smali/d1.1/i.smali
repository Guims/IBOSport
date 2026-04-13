.class public abstract Ld1/i;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ld1/e;

.field public b:LI0/L;

.field public c:LI0/s;

.field public d:Ld1/g;

.field public e:J

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:LY1/c;

.field public k:J

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld1/e;

    invoke-direct {v0}, Ld1/e;-><init>()V

    iput-object v0, p0, Ld1/i;->a:Ld1/e;

    new-instance v0, LY1/c;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LY1/c;-><init>(IZ)V

    iput-object v0, p0, Ld1/i;->j:LY1/c;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Ld1/i;->g:J

    return-void
.end method

.method public abstract b(Lk0/u;)J
.end method

.method public abstract c(Lk0/u;JLY1/c;)Z
.end method

.method public d(Z)V
    .locals 4

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    new-instance p1, LY1/c;

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-direct {p1, v2, v3}, LY1/c;-><init>(IZ)V

    iput-object p1, p0, Ld1/i;->j:LY1/c;

    iput-wide v0, p0, Ld1/i;->f:J

    const/4 p1, 0x0

    iput p1, p0, Ld1/i;->h:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Ld1/i;->h:I

    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Ld1/i;->e:J

    iput-wide v0, p0, Ld1/i;->g:J

    return-void
.end method
