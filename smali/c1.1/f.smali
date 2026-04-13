.class public final synthetic Lc1/f;
.super Ljava/lang/Object;

# interfaces
.implements Lo3/d;
.implements Ll0/p;


# instance fields
.field public final synthetic b:Lc1/i;


# direct methods
.method public synthetic constructor <init>(Lc1/i;)V
    .locals 0

    iput-object p1, p0, Lc1/f;->b:Lc1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lc1/q;

    iget-object v0, p0, Lc1/f;->b:Lc1/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public b(JLk0/u;)V
    .locals 1

    iget-object v0, p0, Lc1/f;->b:Lc1/i;

    iget-object v0, v0, Lc1/i;->J:[LI0/L;

    invoke-static {p1, p2, p3, v0}, LI0/b;->d(JLk0/u;[LI0/L;)V

    return-void
.end method
