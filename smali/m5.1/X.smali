.class public final Lm5/X;
.super Lm5/V;


# instance fields
.field public final t:Lm5/a0;

.field public final u:Lm5/Y;

.field public final v:Lm5/j;

.field public final w:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lm5/a0;Lm5/Y;Lm5/j;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lr5/k;-><init>()V

    iput-object p1, p0, Lm5/X;->t:Lm5/a0;

    iput-object p2, p0, Lm5/X;->u:Lm5/Y;

    iput-object p3, p0, Lm5/X;->v:Lm5/j;

    iput-object p4, p0, Lm5/X;->w:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm5/X;->n(Ljava/lang/Throwable;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 6

    iget-object p1, p0, Lm5/X;->v:Lm5/j;

    invoke-static {p1}, Lm5/a0;->I(Lr5/k;)Lm5/j;

    move-result-object p1

    iget-object v0, p0, Lm5/X;->t:Lm5/a0;

    iget-object v1, p0, Lm5/X;->u:Lm5/Y;

    iget-object v2, p0, Lm5/X;->w:Ljava/lang/Object;

    if-eqz p1, :cond_2

    :cond_0
    iget-object v3, p1, Lm5/j;->t:Lm5/a0;

    new-instance v4, Lm5/X;

    invoke-direct {v4, v0, v1, p1, v2}, Lm5/X;-><init>(Lm5/a0;Lm5/Y;Lm5/j;Ljava/lang/Object;)V

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lm5/w;->f(Lm5/Q;Lm5/V;I)Lm5/D;

    move-result-object v3

    sget-object v4, Lm5/c0;->b:Lm5/c0;

    if-eq v3, v4, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lm5/a0;->I(Lr5/k;)Lm5/j;

    move-result-object p1

    if-nez p1, :cond_0

    :cond_2
    invoke-virtual {v0, v1, v2}, Lm5/a0;->v(Lm5/Y;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lm5/a0;->k(Ljava/lang/Object;)V

    return-void
.end method
