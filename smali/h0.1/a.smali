.class public Lh0/a;
.super Landroidx/lifecycle/J;


# instance fields
.field public final c:Ln/k;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/J;-><init>()V

    new-instance v0, Ln/k;

    invoke-direct {v0}, Ln/k;-><init>()V

    iput-object v0, p0, Lh0/a;->c:Ln/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lh0/a;->c:Ln/k;

    iget v1, v0, Ln/k;->r:I

    const/4 v2, 0x0

    if-gtz v1, :cond_1

    iget-object v3, v0, Ln/k;->q:[Ljava/lang/Object;

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_0

    const/4 v5, 0x0

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iput v2, v0, Ln/k;->r:I

    return-void

    :cond_1
    iget-object v0, v0, Ln/k;->q:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-static {v0}, LB/f;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object v0

    throw v0
.end method
