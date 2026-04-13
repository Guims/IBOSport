.class public final Lm5/j;
.super Lm5/T;

# interfaces
.implements Lm5/i;


# instance fields
.field public final t:Lm5/a0;


# direct methods
.method public constructor <init>(Lm5/a0;)V
    .locals 0

    invoke-direct {p0}, Lr5/k;-><init>()V

    iput-object p1, p0, Lm5/j;->t:Lm5/a0;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lm5/V;->m()Lm5/a0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm5/a0;->q(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lm5/j;->n(Ljava/lang/Throwable;)V

    sget-object p1, LS4/i;->a:LS4/i;

    return-object p1
.end method

.method public final n(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lm5/j;->t:Lm5/a0;

    invoke-virtual {p0}, Lm5/V;->m()Lm5/a0;

    move-result-object v0

    invoke-virtual {p1, v0}, Lm5/a0;->m(Ljava/lang/Object;)Z

    return-void
.end method
