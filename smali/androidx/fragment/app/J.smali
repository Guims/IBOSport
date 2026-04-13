.class public final Landroidx/fragment/app/J;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/fragment/app/I;


# instance fields
.field public final a:I

.field public final b:I

.field public final synthetic c:Landroidx/fragment/app/K;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/K;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/J;->c:Landroidx/fragment/app/K;

    iput p2, p0, Landroidx/fragment/app/J;->a:I

    iput p3, p0, Landroidx/fragment/app/J;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/J;->c:Landroidx/fragment/app/K;

    iget-object v1, v0, Landroidx/fragment/app/K;->x:Landroidx/fragment/app/t;

    iget v2, p0, Landroidx/fragment/app/J;->a:I

    if-eqz v1, :cond_0

    if-gez v2, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/t;->i()Landroidx/fragment/app/K;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroidx/fragment/app/K;->Q(II)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    iget v1, p0, Landroidx/fragment/app/J;->b:I

    invoke-virtual {v0, p1, p2, v2, v1}, Landroidx/fragment/app/K;->R(Ljava/util/ArrayList;Ljava/util/ArrayList;II)Z

    move-result p1

    return p1
.end method
