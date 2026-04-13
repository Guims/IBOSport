.class public final Lk/X;
.super Lk/W;


# instance fields
.field public final synthetic s:Lk/Y;


# direct methods
.method public constructor <init>(Lk/Y;)V
    .locals 0

    iput-object p1, p0, Lk/X;->s:Lk/Y;

    invoke-direct {p0, p1}, Lk/W;-><init>(Lk/Y;)V

    return-void
.end method


# virtual methods
.method public final M(IF)V
    .locals 1

    iget-object v0, p0, Lk/X;->s:Lk/Y;

    invoke-static {v0, p1, p2}, Lk/Y;->f(Lk/Y;IF)V

    return-void
.end method
