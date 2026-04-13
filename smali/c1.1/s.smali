.class public final Lc1/s;
.super Ljava/lang/Object;


# instance fields
.field public a:Lc1/e;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[J

.field public j:[Z

.field public k:Z

.field public l:[Z

.field public m:Lc1/r;

.field public final n:Lk0/u;

.field public o:Z

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Lc1/s;->f:[J

    new-array v1, v0, [I

    iput-object v1, p0, Lc1/s;->g:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lc1/s;->h:[I

    new-array v1, v0, [J

    iput-object v1, p0, Lc1/s;->i:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Lc1/s;->j:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lc1/s;->l:[Z

    new-instance v0, Lk0/u;

    invoke-direct {v0}, Lk0/u;-><init>()V

    iput-object v0, p0, Lc1/s;->n:Lk0/u;

    return-void
.end method
