.class public final Lf/h;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a;


# instance fields
.field public final synthetic a:Lf/i;


# direct methods
.method public constructor <init>(Lf/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/h;->a:Lf/i;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lf/h;->a:Lf/i;

    invoke-virtual {v0}, Lf/i;->n()Lf/o;

    move-result-object v1

    invoke-virtual {v1}, Lf/o;->a()V

    iget-object v0, v0, Landroidx/activity/j;->t:Lcom/bumptech/glide/manager/r;

    iget-object v0, v0, Lcom/bumptech/glide/manager/r;->s:Ljava/lang/Object;

    check-cast v0, Lk/r;

    const-string v2, "androidx:appcompat"

    invoke-virtual {v0, v2}, Lk/r;->c(Ljava/lang/String;)Landroid/os/Bundle;

    invoke-virtual {v1}, Lf/o;->c()V

    return-void
.end method
