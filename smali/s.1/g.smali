.class public Ls/g;
.super Ls/f;


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(Ls/o;)V
    .locals 0

    invoke-direct {p0, p1}, Ls/f;-><init>(Ls/o;)V

    instance-of p1, p1, Ls/k;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Ls/f;->e:I

    return-void

    :cond_0
    const/4 p1, 0x3

    iput p1, p0, Ls/f;->e:I

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 3

    iget-boolean v0, p0, Ls/f;->j:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls/f;->j:Z

    iput p1, p0, Ls/f;->g:I

    iget-object p1, p0, Ls/f;->k:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Ls/d;

    invoke-interface {v2, v2}, Ls/d;->a(Ls/d;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
