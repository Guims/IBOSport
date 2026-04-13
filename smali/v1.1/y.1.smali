.class public abstract Lv1/y;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lv1/z;

.field public b:Z

.field public final c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv1/z;

    invoke-direct {v0}, Landroid/database/Observable;-><init>()V

    iput-object v0, p0, Lv1/y;->a:Lv1/z;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv1/y;->b:Z

    const/4 v0, 0x1

    iput v0, p0, Lv1/y;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public b(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public c(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lv1/y;->a:Lv1/z;

    invoke-virtual {v0}, Lv1/z;->b()V

    return-void
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Lv1/y;->a:Lv1/z;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lv1/z;->c(II)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public abstract g(Lv1/X;I)V
.end method

.method public abstract h(Landroid/view/ViewGroup;I)Lv1/X;
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j(Lv1/X;)V
    .locals 0

    return-void
.end method
