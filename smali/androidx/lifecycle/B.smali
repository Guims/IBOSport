.class public final Landroidx/lifecycle/B;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/lifecycle/r;


# static fields
.field public static final x:Landroidx/lifecycle/B;


# instance fields
.field public b:I

.field public q:I

.field public r:Z

.field public s:Z

.field public t:Landroid/os/Handler;

.field public final u:Landroidx/lifecycle/t;

.field public final v:LB4/l;

.field public final w:LL2/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/B;

    invoke-direct {v0}, Landroidx/lifecycle/B;-><init>()V

    sput-object v0, Landroidx/lifecycle/B;->x:Landroidx/lifecycle/B;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/B;->r:Z

    iput-boolean v0, p0, Landroidx/lifecycle/B;->s:Z

    new-instance v0, Landroidx/lifecycle/t;

    invoke-direct {v0, p0}, Landroidx/lifecycle/t;-><init>(Landroidx/lifecycle/r;)V

    iput-object v0, p0, Landroidx/lifecycle/B;->u:Landroidx/lifecycle/t;

    new-instance v0, LB4/l;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, LB4/l;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/B;->v:LB4/l;

    new-instance v0, LL2/o;

    invoke-direct {v0, p0}, LL2/o;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/B;->w:LL2/o;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Landroidx/lifecycle/B;->q:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/lifecycle/B;->q:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroidx/lifecycle/B;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/lifecycle/B;->u:Landroidx/lifecycle/t;

    sget-object v1, Landroidx/lifecycle/l;->ON_RESUME:Landroidx/lifecycle/l;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/t;->d(Landroidx/lifecycle/l;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/B;->r:Z

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/B;->t:Landroid/os/Handler;

    invoke-static {v0}, Le5/g;->c(Ljava/lang/Object;)V

    iget-object v1, p0, Landroidx/lifecycle/B;->v:LB4/l;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final h()Landroidx/lifecycle/t;
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/B;->u:Landroidx/lifecycle/t;

    return-object v0
.end method
