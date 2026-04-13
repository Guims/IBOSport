.class public interface abstract Landroidx/media3/common/VideoGraph;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/VideoGraph$Listener;
    }
.end annotation


# virtual methods
.method public abstract getProcessor(I)Landroidx/media3/common/VideoFrameProcessor;
.end method

.method public abstract hasProducedFrameWithTimestampZero()Z
.end method

.method public abstract initialize()V
.end method

.method public abstract registerInput(I)V
.end method

.method public abstract release()V
.end method

.method public abstract setOutputSurfaceInfo(Landroidx/media3/common/SurfaceInfo;)V
.end method
