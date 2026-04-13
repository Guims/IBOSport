.class public final LO1/g;
.super Ljava/lang/Object;

# interfaces
.implements LO1/s;


# instance fields
.field public final a:LO1/c;


# direct methods
.method public constructor <init>(LO1/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO1/g;->a:LO1/c;

    return-void
.end method


# virtual methods
.method public final a(LO1/x;)LO1/r;
    .locals 2

    new-instance p1, LH1/c;

    iget-object v0, p0, LO1/g;->a:LO1/c;

    const/4 v1, 0x3

    invoke-direct {p1, v1, v0}, LH1/c;-><init>(ILjava/lang/Object;)V

    return-object p1
.end method
