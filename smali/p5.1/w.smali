.class public final Lp5/w;
.super Ljava/lang/Object;

# interfaces
.implements Lp5/c;


# instance fields
.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp5/w;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;LV4/d;)Ljava/lang/Object;
    .locals 0

    iget-object p1, p0, Lp5/w;->b:Ljava/lang/Throwable;

    throw p1
.end method
