.class public final Lx0/a;
.super Lp0/g;


# instance fields
.field public u:Landroid/graphics/Bitmap;

.field public final synthetic v:Lx0/b;


# direct methods
.method public constructor <init>(Lx0/b;)V
    .locals 0

    invoke-direct {p0}, LU2/e;-><init>()V

    iput-object p1, p0, Lx0/a;->v:Lx0/b;

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lx0/a;->u:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, LU2/e;->q:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lp0/g;->r:J

    iput v0, p0, Lp0/g;->s:I

    iput-boolean v0, p0, Lp0/g;->t:Z

    return-void
.end method

.method public final l()V
    .locals 1

    iget-object v0, p0, Lx0/a;->v:Lx0/b;

    invoke-virtual {v0, p0}, Lp0/i;->m(Lp0/g;)V

    return-void
.end method
