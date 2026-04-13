.class public final Lcom/bumptech/glide/manager/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/manager/i;


# instance fields
.field public final synthetic b:Landroidx/lifecycle/t;

.field public final synthetic q:Lcom/bumptech/glide/manager/k;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/k;Landroidx/lifecycle/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/manager/j;->q:Lcom/bumptech/glide/manager/k;

    iput-object p2, p0, Lcom/bumptech/glide/manager/j;->b:Landroidx/lifecycle/t;

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/j;->q:Lcom/bumptech/glide/manager/k;

    iget-object v0, v0, Lcom/bumptech/glide/manager/k;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bumptech/glide/manager/j;->b:Landroidx/lifecycle/t;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final k()V
    .locals 0

    return-void
.end method
