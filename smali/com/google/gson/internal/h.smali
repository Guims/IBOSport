.class public final Lcom/google/gson/internal/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Lcom/google/gson/internal/j;

.field public q:Lcom/google/gson/internal/j;

.field public r:I

.field public final synthetic s:Lcom/google/gson/internal/k;

.field public final synthetic t:I


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/k;I)V
    .locals 0

    iput p2, p0, Lcom/google/gson/internal/h;->t:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/h;->s:Lcom/google/gson/internal/k;

    iget-object p2, p1, Lcom/google/gson/internal/k;->u:Lcom/google/gson/internal/j;

    iget-object p2, p2, Lcom/google/gson/internal/j;->s:Lcom/google/gson/internal/j;

    iput-object p2, p0, Lcom/google/gson/internal/h;->b:Lcom/google/gson/internal/j;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/gson/internal/h;->q:Lcom/google/gson/internal/j;

    iget p1, p1, Lcom/google/gson/internal/k;->t:I

    iput p1, p0, Lcom/google/gson/internal/h;->r:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/gson/internal/h;->b()Lcom/google/gson/internal/j;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/google/gson/internal/j;
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/h;->b:Lcom/google/gson/internal/j;

    iget-object v1, p0, Lcom/google/gson/internal/h;->s:Lcom/google/gson/internal/k;

    iget-object v2, v1, Lcom/google/gson/internal/k;->u:Lcom/google/gson/internal/j;

    if-eq v0, v2, :cond_1

    iget v1, v1, Lcom/google/gson/internal/k;->t:I

    iget v2, p0, Lcom/google/gson/internal/h;->r:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/gson/internal/j;->s:Lcom/google/gson/internal/j;

    iput-object v1, p0, Lcom/google/gson/internal/h;->b:Lcom/google/gson/internal/j;

    iput-object v0, p0, Lcom/google/gson/internal/h;->q:Lcom/google/gson/internal/j;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Lcom/google/gson/internal/h;->b:Lcom/google/gson/internal/j;

    iget-object v1, p0, Lcom/google/gson/internal/h;->s:Lcom/google/gson/internal/k;

    iget-object v1, v1, Lcom/google/gson/internal/k;->u:Lcom/google/gson/internal/j;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/gson/internal/h;->t:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/google/gson/internal/h;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/gson/internal/h;->b()Lcom/google/gson/internal/j;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/internal/j;->u:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lcom/google/gson/internal/h;->q:Lcom/google/gson/internal/j;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/gson/internal/h;->s:Lcom/google/gson/internal/k;

    invoke-virtual {v2, v0, v1}, Lcom/google/gson/internal/k;->c(Lcom/google/gson/internal/j;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gson/internal/h;->q:Lcom/google/gson/internal/j;

    iget v0, v2, Lcom/google/gson/internal/k;->t:I

    iput v0, p0, Lcom/google/gson/internal/h;->r:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
