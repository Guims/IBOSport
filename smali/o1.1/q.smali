.class public final Lo1/q;
.super Ljava/lang/Object;


# instance fields
.field public final a:LI0/L;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseArray;

.field public final f:LI0/N;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Lo1/p;

.field public n:Lo1/p;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(LI0/L;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/q;->a:LI0/L;

    iput-boolean p2, p0, Lo1/q;->b:Z

    iput-boolean p3, p0, Lo1/q;->c:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo1/q;->d:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lo1/q;->e:Landroid/util/SparseArray;

    new-instance p1, Lo1/p;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/q;->m:Lo1/p;

    new-instance p1, Lo1/p;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/q;->n:Lo1/p;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Lo1/q;->g:[B

    new-instance p2, LI0/N;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, LI0/N;-><init>([BII)V

    iput-object p2, p0, Lo1/q;->f:LI0/N;

    iput-boolean p3, p0, Lo1/q;->k:Z

    iput-boolean p3, p0, Lo1/q;->o:Z

    iget-object p1, p0, Lo1/q;->n:Lo1/p;

    iput-boolean p3, p1, Lo1/p;->b:Z

    iput-boolean p3, p1, Lo1/p;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-boolean v0, p0, Lo1/q;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo1/q;->n:Lo1/p;

    iget-boolean v3, v0, Lo1/p;->b:Z

    if-eqz v3, :cond_1

    iget v0, v0, Lo1/p;->e:I

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lo1/q;->s:Z

    :goto_0
    iget-boolean v3, p0, Lo1/q;->r:Z

    iget v4, p0, Lo1/q;->i:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    if-eqz v0, :cond_4

    if-ne v4, v2, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    or-int v0, v3, v1

    iput-boolean v0, p0, Lo1/q;->r:Z

    return-void
.end method
